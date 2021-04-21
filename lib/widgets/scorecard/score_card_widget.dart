import 'package:aula_1_flutter_nlw/corenwl/app_text_styles.dart';
import 'package:aula_1_flutter_nlw/widgets/chart/chart_widget.dart';
import 'package:flutter/material.dart';

class ScoreCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 136,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          border: Border.all(color: Colors.grey),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 24, bottom: 24),
              child: ChartWidget(),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Vamos Começar!",
                      style: AppTextStyles.heading,
                    ),
                    Text(
                      "Complete os desafios e avance em conhecimento!",
                      style: AppTextStyles.body,
                    ),
                  ],
                ),
              ),
            )
          ],),
      ),
    );
  }
}