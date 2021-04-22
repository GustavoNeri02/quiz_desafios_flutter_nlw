import 'package:aula_1_flutter_nlw/widgets/appbar/app_bar_widget.dart';
import 'package:aula_1_flutter_nlw/widgets/levelbutton/level_button_widget.dart';
import 'package:aula_1_flutter_nlw/widgets/quizcard/quiz_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Container(
        //color: Color(0XFFDCDCE6),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LevelButtonWidget(label: "Fácil"),
                  LevelButtonWidget(label: "Médio"),
                  LevelButtonWidget(label: "Difícil"),
                  LevelButtonWidget(label: "Perito"),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                padding:
                    EdgeInsets.only(left: 20, top: 12, right: 20, bottom: 20),
                children: [
                  QuizCardWidget(label: "Gerenciamento de Estado"),
                  QuizCardWidget(label: "Construindo Interfaces"),
                  QuizCardWidget(label: "Interação Nativa"),
                  QuizCardWidget(label: "Widgets do Flutter"),
                  QuizCardWidget(label: "Gerenciamento de Estado"),
                  QuizCardWidget(label: "Construindo Interfaces"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
