import 'package:aula_1_flutter_nlw/corenwl/app_colors.dart';
import 'package:aula_1_flutter_nlw/corenwl/app_text_styles.dart';
import 'package:flutter/material.dart';

class ChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      width: 88,
      child: Stack(
        children: [
          Container(
            height: 88,
            width: 88,
            child: CircularProgressIndicator(
              strokeWidth: 10,
              value: 0.75,
              valueColor: AlwaysStoppedAnimation(AppColors.chartPrimary),
              backgroundColor: AppColors.chartSecondary,
            ),
          ),
          Center(
            child: Text(
              "75%",
              style: AppTextStyles.heading,
            ),
          ),
        ],
      ),
    );
  }
}
