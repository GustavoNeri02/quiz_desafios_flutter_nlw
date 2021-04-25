
import 'package:aula_1_flutter_nlw/corenwl/app_images.dart';
import 'package:aula_1_flutter_nlw/corenwl/app_text_styles.dart';
import 'package:aula_1_flutter_nlw/widgets/nextbutton/next_button_widget.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImages.trophy),
              SizedBox(height: 55,),
              Text("Parabéns!", style: AppTextStyles.heading40,),
              SizedBox(height: 16,),

              Text.rich(
                TextSpan(text: "Você concluiu ",
                    children:[
                      TextSpan(text: "\nGerenciamento de Estado ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold)
                      ),
                      TextSpan(text: "\ncom 6 de 10 acertos.")
              ]),
              style: AppTextStyles.body15, textAlign: TextAlign.center,),

              SizedBox(height: 56,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 67),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                  NextButtonWidget.purple(label: "Compartilhar", onTap: (){}),
                    SizedBox(height: 6,),
                  NextButtonWidget.transparent(label: "Voltar ao início", onTap: (){})

                ],),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
