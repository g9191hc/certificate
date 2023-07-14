class QuestionModel {
  //- ID<int> : `id`
  final int id;

  // - 시험종류<String> : `exam`
  final String exam;

  // - 년도<int> : `year`
  final int year;

  // - 회차<int> : `round`
  final int round;

  // - 1차분류<String> : `firstCategory`
  final String firstCategory;

  // - 2차분류<String> : `secondCategory`
  final String secondCategory;

  // - 3차분류<String> : `thirdCategory`
  final String thirdCategory;

  // 질문
  final String question;

  // 선택지
  final String option1;
  final String option2;
  final String option3;
  final String option4;

  // 정답
  final int correctOptionNumber;

  // - 즐겨찾기여부<bool> : `isBookmarked`
  bool isBookmarked = false;

  // - 풀어본횟수<int> : `attemptCount`
  int attemptCount = 0;

  QuestionModel({
    required this.id,
    required this.exam,
    required this.year,
    required this.round,
    required this.firstCategory,
    required this.secondCategory,
    required this.thirdCategory,
    required this.question,
    required this.option1,
    required this.option2,
    required this.option3,
    required this.option4,
    required this.correctOptionNumber,
  });
}
