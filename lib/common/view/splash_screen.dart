import 'package:certificate/common/const/color.dart';
import 'package:certificate/question/view/question_view.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return QuestionView();

    // return Scaffold(
    //   backgroundColor: PRIMARY_BACKGROUND_COLOR,
    //   body: Center(
    //     child: Text(
    //       "Splash Screen",
    //       style: TextStyle(
    //         fontSize: 30,
    //         fontWeight: FontWeight.w500,
    //       ),
    //     )
    //   ),
    // );
  }
}
