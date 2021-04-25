import 'package:aula_1_flutter_nlw/corenwl/app_colors.dart';
import 'package:aula_1_flutter_nlw/corenwl/app_text_styles.dart';
import 'package:flutter/material.dart';

class ChartWidget extends StatefulWidget {
  final double percent;

  const ChartWidget({Key? key, required this.percent}) : super(key: key);
  @override
  _ChartWidgetState createState() => _ChartWidgetState();
}

class _ChartWidgetState extends State<ChartWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  void initAnimation() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    _animation =
        Tween<double>(begin: 0, end: widget.percent).animate(_controller);
    _controller.forward();
  }

  @override
  void initState() {
    initAnimation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      width: 88,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, _) => Stack(
          children: [
            Container(
              height: 88,
              width: 88,
              child: CircularProgressIndicator(
                strokeWidth: 10,
                value: _animation.value,
                valueColor: AlwaysStoppedAnimation(AppColors.chartPrimary),
                backgroundColor: AppColors.chartSecondary,
              ),
            ),
            Center(
              child: Text(
                "${(_animation.value * 100).toInt()}%",
                style: AppTextStyles.heading,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
