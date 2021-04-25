import 'dart:ui';

import 'package:aula_1_flutter_nlw/challenge/challenge_controller.dart';
import 'package:aula_1_flutter_nlw/models/question_model.dart';
import 'package:aula_1_flutter_nlw/widgets/nextbutton/next_button_widget.dart';
import 'package:aula_1_flutter_nlw/widgets/questionindicator/question_indicator_widget.dart';
import 'package:aula_1_flutter_nlw/widgets/quiz/quiz_widget.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
  final List<QuestionModel> questions;
  ChallengePage({Key? key, required this.questions}) : super(key: key);
  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  final controller = ChallengeController();
  final pageController = PageController();

  @override
  void initState() {
    pageController.addListener(() {
      controller.currentPage = pageController.page!.toInt() + 1;
    });
    super.initState();
  }

  void NextPage() {
    if (controller.currentPage < widget.questions.length)
      pageController.nextPage(
        duration: Duration(milliseconds: 250),
        curve: Curves.linear,
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: SafeArea(
          top: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackButton(),
              ValueListenableBuilder<int>(
                valueListenable: controller.currentPageNotifier,
                builder: (context, value, _) => QuestionIndicatorWidget(
                  currPage: value,
                  lenght: widget.questions.length,
                ),
              ),
            ],
          ),
        ),
        preferredSize: Size.fromHeight(100),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: pageController,
          children: widget.questions
              .map((e) => QuizWidget(
                    question: e,
                    onChanged: NextPage,
                  ))
              .toList(),
        ),
      ),
      bottomNavigationBar: SafeArea(
          bottom: true,
          child: ValueListenableBuilder<int>(
              valueListenable: controller.currentPageNotifier,
              builder: (context, value, _) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        if (value < widget.questions.length)
                          Expanded(
                              child: NextButtonWidget.white(
                            label: "Pular",
                            onTap: () {
                              NextPage();
                            },
                          )),
                        if (value == widget.questions.length)
                          Expanded(
                              child: NextButtonWidget.green(
                            label: "Confirmar",
                            onTap: () {
                              Navigator.pop(context);
                            },
                          )),
                      ]))),
    );
  }
}
