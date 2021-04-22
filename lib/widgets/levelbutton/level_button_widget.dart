import 'package:aula_1_flutter_nlw/corenwl/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButtonWidget extends StatelessWidget {
  final String label;
  LevelButtonWidget({Key key, @required this.label}) :
        assert(["Fácil", "Médio", "Difícil", "Perito"].contains(label)),
        super (key: key);

  final types = {
    "Fácil" : {
      "color": AppColors.levelButtonFacil,
      "textColor": AppColors.levelButtonTextFacil,
      "borderColor": AppColors.levelButtonBorderFacil,
    },
    "Médio" : {
      "color": AppColors.levelButtonMedio,
      "textColor": AppColors.levelButtonTextMedio,
      "borderColor": AppColors.levelButtonBorderMedio,
    },
    "Difícil" : {
      "color": AppColors.levelButtonDificil,
      "textColor": AppColors.levelButtonTextDificil,
      "borderColor": AppColors.levelButtonBorderDificil,
    },
    "Perito" : {
      "color": AppColors.levelButtonPerito,
      "textColor": AppColors.levelButtonTextPerito,
      "borderColor": AppColors.levelButtonBorderPerito,
    }
  };

  Color get color => types[label]['color'];
  Color get textColor => types[label]['textColor'];
  Color get borderColor => types[label]['borderColor'];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 32,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(28),
      ),
      child:Center(
        child: Text(label,
          style: GoogleFonts.notoSans(
              color: textColor,
              fontSize: 13),
        ),
      ),
    );
  }
}
