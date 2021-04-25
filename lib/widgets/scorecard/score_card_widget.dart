import 'package:aula_1_flutter_nlw/corenwl/app_colors.dart';
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
          border: Border.all(color: AppColors.chartSecondary),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 24, bottom: 24),
              child: ChartWidget(),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 38, right: 42),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Vamos Começar ^-^",
                      style: AppTextStyles.heading,
                    ),
                    Divider(
                      color: Colors.white,
                      height: 8,
                    ),
                    Text(
                      "Complete os desafios e avance em conhecimento",
                      style: AppTextStyles.body,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
