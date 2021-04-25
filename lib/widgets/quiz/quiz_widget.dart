import 'package:aula_1_flutter_nlw/corenwl/app_text_styles.dart';
import 'package:aula_1_flutter_nlw/models/question_model.dart';
import 'package:aula_1_flutter_nlw/widgets/quizanswer/answer_widget.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatefulWidget {
  final QuestionModel question;
  final ValueChanged<bool> onSelected;
  QuizWidget({Key? key, required this.question, required this.onSelected})
      : super(key: key);

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int indexSelected = -1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            widget.question.title,
            style: AppTextStyles.titleBlackBold,
          ),
          for (var i = 0; i < widget.question.answers.length; i++)
            AnswerWidget(
              isSelect: indexSelected == i,
              disabled: indexSelected != -1,
              ontap: (value) {

                indexSelected = i;
                setState(() {
                  widget.onSelected(value);
                });
              },

              titulo: widget.question.answers[i].title,
              isRight: widget.question.answers[i].isRight,
            ),
        ],
      ),
    );
  }
}
