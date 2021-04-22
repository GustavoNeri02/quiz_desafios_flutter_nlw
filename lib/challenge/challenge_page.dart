import 'dart:ui';

import 'package:aula_1_flutter_nlw/corenwl/app_text_styles.dart';
import 'package:aula_1_flutter_nlw/widgets/questionindicator/question_indicator_widget.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
  ChallengePage({Key key}) : super(key: key);
  @override


  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Column(children: [
          QuestionIndicatorWidget(),],
        ),
        preferredSize: Size.fromHeight(110),),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("O que o Flutter faz em sua totalidade?",
                style: AppTextStyles.titleBlackBold,),
            ],
          ),
        ),
      ),
    );
  }
}
