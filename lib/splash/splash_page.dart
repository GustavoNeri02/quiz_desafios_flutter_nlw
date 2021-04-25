
import 'package:aula_1_flutter_nlw/corenwl/core.dart';
import 'package:aula_1_flutter_nlw/home/home_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2)).then((_) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
    ));
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
