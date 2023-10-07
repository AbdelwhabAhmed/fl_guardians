import 'package:flame_guardians/app/model/question_model.dart';
import 'package:flutter/material.dart';
class AnswerScreen extends StatelessWidget {
   final Questions asks;
  const AnswerScreen({
    super.key, required this.asks,
  });

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return   Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon:(
              const Icon(
                  Icons.arrow_back_ios,
                color: Colors.white,
              )
          ),

        ),

        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
          children:[
            Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image:
                    NetworkImage(
                        asks.image
                    ),
                    fit: BoxFit.fill,
                    colorFilter: const ColorFilter.mode(Colors.black45, BlendMode.darken)
                )
            ),
          ),
          SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                asks.question,
                style: const TextStyle(
                    fontWeight:FontWeight.bold,
                    fontSize: 24,
                    color: Colors.white

                ),
                ),
              ),
            ),

            Container(
              height:double.infinity,
              width: double.infinity,
              margin:EdgeInsets.only(top:size.height*.4),
              padding: const EdgeInsets.only(top: 30,left: 20,right:20 ),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft:Radius.circular(40),
                      topRight: Radius.circular(40)

                  )
              ),
              child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                children:[
                  const Text(

                 'Answer:',
                  style: TextStyle(
                      fontWeight:FontWeight.bold,
                      fontSize: 24,


                  ),
                ),
                const SizedBox(height: 10,),
                Expanded(
                  child: Text(
                      asks.answer,
                    style: Theme.of(context).textTheme.bodyText1
                  ),
                ),
              ]
              ),

            )

    ]
      ),
    );
  }
}
