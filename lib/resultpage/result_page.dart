import 'package:aula_1_flutter_nlw/corenwl/app_images.dart';
import 'package:aula_1_flutter_nlw/corenwl/app_text_styles.dart';
import 'package:aula_1_flutter_nlw/widgets/nextbutton/next_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ResultPage extends StatelessWidget {
  final String title;
  final int length;
  final int result;

  const ResultPage(
      {Key? key,
      required this.title,
      required this.length,
      required this.result})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    String titleResult;
    String imageResult;
    if (result < (0.6 * length)) {
      titleResult = "Oh não :(";
      imageResult = AppImages.error;
    } else {
      titleResult = "Parabéns!";
      imageResult = AppImages.trophy;
    }

    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imageResult),
              SizedBox(
                height: 55,
              ),
              Text(
                titleResult,
                style: AppTextStyles.heading40,
              ),
              SizedBox(
                height: 16,
              ),
              Text.rich(
                TextSpan(text: "Você concluiu ", children: [
                  TextSpan(
                      text: "\n$title ",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "\ncom $result de $length acertos.")
                ]),
                style: AppTextStyles.body15,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 56,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 67),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    NextButtonWidget.purple(
                        label: "Compartilhar",
                        onTap: () {
                          Share.share(
                              "DevQuiz NLW 5 - Flutter: Resultado do quiz: $title\n"
                              "Obtive: ${(result / length) * 100}% de aproveitamento!");
                        }),
                    SizedBox(
                      height: 6,
                    ),
                    NextButtonWidget.transparent(
                        label: "Voltar ao início",
                        onTap: () {
                          Navigator.pop(context);
                        })
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
