import 'package:flame_guardians/app/config/constant.dart';
import 'package:flutter/material.dart';

import '../config/theme.dart';
import '../model/question_model.dart';

class QuestionWidget extends StatelessWidget {
  final Questions asks;
  final Function press;


  const QuestionWidget({
    super.key,
    required this.asks,
    required this.press,
  });
  @override
  Widget build(BuildContext context,) {
    return GestureDetector(
      onTap: () {
        press();
      },
      child: Center(
        child: Container(
          margin: const EdgeInsets.all(16),
          height: 150,
          width: context.width * .98,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white                                                                                                            ),
          child: Row(
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage(asks.image),
                      fit: BoxFit.fill,
                      // colorFilter: ColorFilter.mode(
                      //     Colors.black45, BlendMode.darken)
                    )
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  asks.question,
                  style:  TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
