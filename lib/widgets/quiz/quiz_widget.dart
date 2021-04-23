import 'package:aula_1_flutter_nlw/corenwl/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  QuizWidget({Key key, @required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text(title,
          style: AppTextStyles.titleBlackBold,),
      ],),
    );
  }
}

