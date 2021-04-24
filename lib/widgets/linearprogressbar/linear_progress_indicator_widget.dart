import 'package:aula_1_flutter_nlw/corenwl/app_colors.dart';
import 'package:flutter/material.dart';

class LinearProgressIndicatorWidget extends StatelessWidget {
  final double value;
  LinearProgressIndicatorWidget({Key? key, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      minHeight: 4,
      value: value,
      valueColor: AlwaysStoppedAnimation(AppColors.chartPrimary),
      backgroundColor: AppColors.chartSecondary,
    );
  }
}
