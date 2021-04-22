import 'package:aula_1_flutter_nlw/corenwl/app_text_styles.dart';
import 'package:aula_1_flutter_nlw/widgets/linearprogressbar/linear_progress_indicator_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class QuestionIndicatorWidget extends StatefulWidget {
  QuestionIndicatorWidget({Key key}) : super(key: key);
  @override
  _ChallengeIndicatorWidgetState createState() =>
      _ChallengeIndicatorWidgetState();
}

class _ChallengeIndicatorWidgetState extends State<QuestionIndicatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Questão 04", style: AppTextStyles.bodyLightGrey15),
                Text("de 10", style: AppTextStyles.bodyLightGrey15),
              ],
            ),
            LinearProgressIndicatorWidget(value: 0.4),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
      ),
    );
  }
}
