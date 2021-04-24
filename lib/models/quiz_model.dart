import 'dart:convert';

import 'package:aula_1_flutter_nlw/models/question_model.dart';

enum Level { facil, medio, dificil, perito }

extension LevelStringExt on String {
  Level get levelParse => {
        "facil": Level.facil,
        "medio": Level.medio,
        "dificil": Level.dificil,
        "perito": Level.perito
      }[this]!;
}

extension LevelExt on Level {
  String get parse => {
        Level.facil: "facil",
        Level.medio: "medio",
        Level.dificil: "dificil",
        Level.perito: "perito",
      }[this]!;
}

class QuizModel {
  final int questionAnswered;
  final String title;
  final List<QuestionModel> listQuestion;
  final String imagem;
  final Level level;

  //construtor
  QuizModel({
    this.questionAnswered = 0,
    required this.title,
    required this.listQuestion,
    required this.imagem,
    required this.level,
  });

  Map<String, dynamic> toMap() {
    return {
      'questionAnswered': questionAnswered,
      'title': title,
      'listQuestion': listQuestion.map((e) => e.toMap()).toList(),
      'imagem': imagem,
      'level': level.parse,
    };
  }

  factory QuizModel.fromMap(Map<String, dynamic> map) {
    return QuizModel(
        title: map['title'],
        listQuestion: List<QuestionModel>.from(
          map['listQuestion']?.map((x) => QuestionModel.fromMap(x)),
        ),
        imagem: map['imagem'],
        level: map['level'].toString().levelParse);
  }

  String toJson() => json.encode(toMap());

  factory QuizModel.fromJson(String source) =>
      QuizModel.fromMap(json.decode(source));
}
