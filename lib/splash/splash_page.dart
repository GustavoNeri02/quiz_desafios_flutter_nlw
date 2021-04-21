import 'package:aula_1_flutter_nlw/corenwl/app_gradients.dart';
import 'package:aula_1_flutter_nlw/corenwl/app_images.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: AppGradients.linearRedBlackBluegray,
        ),
        child: Center(
          child: Image.asset(
            AppImages.logo,
          ),
        ),
      ),
    );
  }
}
