import 'package:certificate/common/const/color.dart';
import 'package:certificate/question/model/question_model.dart';
import 'package:flutter/material.dart';

class DefaultLayout extends StatelessWidget {
  final String title;
  final Widget child;


  DefaultLayout({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: renderAppBar(),
      body: child,
    );
  }

  AppBar renderAppBar() {
    return AppBar(
      backgroundColor: PRIMARY_BACKGROUND_COLOR,
      foregroundColor: Colors.black,
      title: Text(title),
    );
  }
}
