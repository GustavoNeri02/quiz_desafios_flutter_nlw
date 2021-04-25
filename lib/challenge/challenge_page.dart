import 'dart:ui';

import 'package:aula_1_flutter_nlw/challenge/challenge_controller.dart';
import 'package:aula_1_flutter_nlw/models/question_model.dart';
import 'package:aula_1_flutter_nlw/resultpage/result_page.dart';
import 'package:aula_1_flutter_nlw/widgets/nextbutton/next_button_widget.dart';
import 'package:aula_1_flutter_nlw/widgets/questionindicator/question_indicator_widget.dart';
import 'package:aula_1_flutter_nlw/widgets/quiz/quiz_widget.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
  final List<QuestionModel> questions;
  final String title;
  ChallengePage({Key? key, required this.questions, required this.title}) : super(key: key);
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

  void OnSelected(bool value){
    if (value){
      controller.hits++;
    }
    NextPage();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: SafeArea(
          top: true, bottom: true,
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
                    onSelected: OnSelected,
                  ))
              .toList(),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20),
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
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ResultPage(
                                      result: controller.hits,
                                      title: widget.title,
                                    length: widget.questions.length,
                                    )));
                          },
                        )),

                    ])),
      ),
    );
  }
}
