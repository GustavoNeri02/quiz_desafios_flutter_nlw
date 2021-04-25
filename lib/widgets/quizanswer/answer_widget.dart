import 'package:aula_1_flutter_nlw/corenwl/app_colors.dart';
import 'package:aula_1_flutter_nlw/corenwl/app_text_styles.dart';
import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  final String titulo;
  final bool isRight;
  final bool isSelect;
  final bool disabled;
  final ValueChanged<bool> ontap;

  AnswerWidget({
    Key? key,
    required this.titulo,
    this.isRight = false,
    // ignore: non_constant_identifier_names
    this.isSelect = false,
    required this.ontap,
    required this.disabled,
  }) : super(key: key);

  Color get _selectedColorRight =>
      isRight ? AppColors.darkGreen : AppColors.darkRed;

  Color get _selectedBorderRight =>
      isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedColorCardRight =>
      isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedBorderCardRight =>
      isRight ? AppColors.green : AppColors.red;

  TextStyle get _selectedTextStyleRight =>
      isRight ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;

  IconData get _selectedIconRight => isRight ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: disabled,
      child: GestureDetector(
        onTap: (){
          ontap(this.isRight);
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Container(
            height: 72,
            decoration: BoxDecoration(
              color: isSelect ? _selectedColorCardRight : AppColors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.fromBorderSide(BorderSide(
                color: isSelect
                    ? _selectedBorderCardRight
                    : AppColors.chartSecondary,
              )),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(titulo,
                        style: isSelect
                            ? _selectedTextStyleRight
                            : AppTextStyles.body),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 42),
                    child: Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        color: isSelect ? _selectedColorRight : AppColors.white,
                        borderRadius: BorderRadius.circular(500),
                        border: Border.fromBorderSide(BorderSide(
                            color: isSelect
                                ? _selectedBorderRight
                                : AppColors.chartSecondary)),
                      ),
                      child: Stack(alignment: Alignment.center, children: [
                        //Icon(Icons.circle,color: AppColors.darkGreen, size: 32,),
                        Icon(
                          _selectedIconRight,
                          size: 16,
                          color: AppColors.white,
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
