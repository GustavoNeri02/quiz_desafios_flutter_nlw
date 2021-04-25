import 'package:aula_1_flutter_nlw/corenwl/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color fontColor;
  final Color borderColor;
  final VoidCallback onTap;

  NextButtonWidget.green({required this.label, required this.onTap}) :
        this.backgroundColor = AppColors.darkGreen,
        this.fontColor = Colors.white,
        this.borderColor = AppColors.darkGreen;

  NextButtonWidget.white({required this.label, required this.onTap}) :
        this.backgroundColor = AppColors.white,
        this.fontColor = AppColors.lightGrey,
        this.borderColor = AppColors.chartSecondary;

  NextButtonWidget.purple({required this.label, required this.onTap}) :
        this.backgroundColor = AppColors.purple,
        this.fontColor = AppColors.white,
        this.borderColor = AppColors.purple;

  NextButtonWidget.transparent({required this.label, required this.onTap}) :
        this.backgroundColor = Colors.transparent,
        this.fontColor = AppColors.black,
        this.borderColor = Colors.transparent;



  NextButtonWidget({
    Key? key,
    required this.label,
    required this.backgroundColor, required this.fontColor, required this.borderColor, required this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 48,

        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: borderColor),

        ),

        child: TextButton(
          style: ButtonStyle(

          ),
            onPressed: onTap ,
            child: Text(
                label, style: GoogleFonts.notoSans(
                fontWeight: FontWeight.w600,
                fontSize: 15,
              color: fontColor
            ),) ),
      ),
    );
  }
}
