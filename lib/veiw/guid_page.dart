import 'package:flame_guardians/app/config/constant.dart';
import 'package:flame_guardians/app/model/question_model.dart';
import 'package:flame_guardians/app/component/question_card.dart';
import 'package:flutter/material.dart';
import 'answer_page.dart';

class GuidePage extends StatelessWidget {
  const GuidePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: (const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          )),
        ),
        title: const Center(
          child: Text(
            'Guids',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 26, color: Colors.white),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        height: context.height,
        width: context.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://www.nationalobserver.com/sites/nationalobserver.com/files/styles/article_header_xl/public/img/2019/09/18/1221px-amazon_fire_satellite_image.png?itok=guPo2zNM'),
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(Colors.black45, BlendMode.darken))),
        child: SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => QuestionWidget(
              asks: asks[index],
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (builder) => AnswerScreen(
                    asks: asks[index],
                  ),
                ),
              ),
            ),
            itemCount: asks.length,
          ),
        ),
      ),
    );
  }
}
