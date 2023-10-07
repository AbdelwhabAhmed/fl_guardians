import 'package:flame_guardians/app/config/constant.dart';
import 'package:flame_guardians/app/config/theme.dart';
import 'package:flame_guardians/layout/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


import '../cache_helper.dart';

class BoardingModel {
  final String image;
  final String title;
  final String body;



  BoardingModel({
    required this.image,
    required this.title,
    required this.body,


  });
}

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<BoardingModel> boarding = [
    BoardingModel(
        image: 'https://i.pinimg.com/564x/1a/84/c1/1a84c17503f8f37f20f70b98665fed4c.jpg',
        title: 'Welcome',
        body: 'Welcome to our new tool for dealing with forest fires',

    ),
    BoardingModel(
        image: 'https://i.pinimg.com/236x/d3/d6/e1/d3d6e1552db93821202cb42b0432d408.jpg',
        title: 'Fire guardians ',
        body: 'Fire gaurdians look forward to being a major tool for dealing with forestfires'
      ),
    BoardingModel(
        image: 'https://i.pinimg.com/236x/eb/36/d3/eb36d364aecf6a34969aee207004f0ca.jpg',
        title: 'Solutions',
        body: 'Trianing, providing information, and enhancing dealin within the crises',
       )
  ];

  bool isLast = false;
  void submit() {
    CacheHelper.saveData(key: 'onBoarding', value: true);
    setState(() {
      Navigator.pushAndRemoveUntil(
              context, MaterialPageRoute(builder: (context) => const HomeScreen()),
              (route) {
            return false;
          });
    });
  }

  var boardcontroller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            TextButton(
              onPressed: () {
                submit();
              },
              child:  Text(
                'Skip',
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 18
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: boardcontroller,
                onPageChanged: (int index) {
                  if (index == boarding.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) =>
                    buildBoardingItem(boarding[index]),
                itemCount: boarding.length,
              ),
            ),

          ],
        ));
  }

  Widget buildBoardingItem(BoardingModel model) => Stack(
        children: [
          Container(
            height: context.height,
            width: context.width,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
                image: DecorationImage(
                    image: NetworkImage(
                        model.image),
                    fit: BoxFit.fill,

                ),
            ),
          ),
          Container(
            height:double.infinity,
            width: double.infinity,
            margin:EdgeInsets.only(top:context.height*.6),
            padding: const EdgeInsets.only(top: 30,left: 20,right:20 ),
            decoration:  BoxDecoration(
                color: AppColors.whiteColor.withOpacity(.5),
                borderRadius: BorderRadius.only(
                    topLeft:Radius.circular(40),
                    topRight: Radius.circular(40)

                )
            ),
            child:Column(
              children: [
                Center(
                  child: Text(
                    model.title,
                    style:  TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: AppColors.blackColor
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Text(
                  model.body,
                  style:  TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.blackColor
                  ),
                ),
                const Spacer(),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      SmoothPageIndicator(
                        controller: boardcontroller,
                        count: boarding.length,
                        effect: ExpandingDotsEffect(
                          dotColor: Colors.grey,
                          activeDotColor: AppColors.whiteColor,
                          dotHeight: 10,
                          dotWidth: 10,
                          expansionFactor: 4,
                          spacing: 5,
                        ),
                      ),
                      const Spacer(),
                      FloatingActionButton(
                         backgroundColor: AppColors.whiteColor ,
                        onPressed: () {
                          if (isLast) {
                            submit();
                          } else {
                            setState(() {
                              boardcontroller.nextPage(
                                  duration: const Duration(milliseconds: 750),
                                  curve: Curves.fastLinearToSlowEaseIn);
                            });
                          }
                        },
                        child:  Icon(
                            Icons.arrow_forward_ios,
                          color: AppColors.blackColor,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ) ,
          )


        ],
      );
}
