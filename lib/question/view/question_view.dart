import 'package:certificate/common/layout/default_layout.dart';
import 'package:flutter/material.dart';

import '../model/question_model.dart';

class QuestionView extends StatelessWidget {
  final QuestionModel question = QuestionModel(
      id: 1,
      exam: '건축기사',
      year: 2022,
      round: 1,
      firstCategory: '건축계획',
      secondCategory: '',
      thirdCategory: '',
      question: '장애인ㆍ노인ㆍ임산부 등의 편의증진 보장에 관한 법령에 따른 편의시설 중 매개시설에 속하지 않는 것은?',
      option1: '주출입구 접근로',
      option2: '유도 및 안내설비',
      option3: '장애인전용 주차구역',
      option4: '주출입구 높이차이 제거',
      correctOptionNumber: 2);

  QuestionView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'QuestionScreen',
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _Notations(
                exam: question.exam,
                year: question.year,
                round: question.round,
                firstCategory: question.firstCategory,
              ),
              _Question(question: question.question),
              _Options(
                option1: question.option1,
                option2: question.option2,
                option3: question.option3,
                option4: question.option4,
                correctOptionNumber: question.correctOptionNumber,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Notations extends StatelessWidget {
  final String exam;
  final int year;
  final int round;
  final String firstCategory;

  const _Notations({
    super.key,
    required this.exam,
    required this.year,
    required this.round,
    required this.firstCategory,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text('$exam $year년 $round회차'),
        Text('과목 : $firstCategory'),
      ],
    );
  }
}

class _Question extends StatelessWidget {
  final String question;

  const _Question({
    super.key,
    required this.question,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Q. $question',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class _Options extends StatelessWidget {
  final String option1;
  final String option2;
  final String option3;
  final String option4;
  final int correctOptionNumber;
  int count = 0;

  _Options({
    super.key,
    required this.option1,
    required this.option2,
    required this.option3,
    required this.option4,
    required this.correctOptionNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        renderOption(option1, context),
        renderOption(option2, context),
        renderOption(option3, context),
        renderOption(option4, context),
      ],
    );
  }

  Widget renderOption(option, context) {
    String? content;
    count += 1;
    if (count == correctOptionNumber)
      content = "정답입니다!";
    else
      content = "오답입니다 ㅜㅜ";

    return TextButton(
      style: TextButton.styleFrom(
          foregroundColor: Colors.black,
          textStyle: TextStyle(
            fontSize: 20,
          )),
      onPressed: () {
        showDialog(
          context: context,
          builder: (_) => ResultDialog(
            content: content!,
          ),
        );
      },
      child: Text(
        '$count. $option',
      ),
    );
  }
}

class ResultDialog extends StatelessWidget {
  final String content;

  const ResultDialog({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text(content),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("확인"),
        ),
      ],
    );
  }
}
