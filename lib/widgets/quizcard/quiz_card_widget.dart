import 'package:aula_1_flutter_nlw/corenwl/app_colors.dart';
import 'package:aula_1_flutter_nlw/corenwl/app_images.dart';
import 'package:aula_1_flutter_nlw/corenwl/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizCardWidget extends StatelessWidget {
  final String label;
  QuizCardWidget({Key key, @required this.label}) :
        assert(["Gerenciamento de Estado", "Construindo Interfaces",
          "Interação Nativa", "Widgets do Flutter"].contains(label)),
        super (key: key);


  final types = {
    "Gerenciamento de Estado": {
      "image": AppImages.data,
    },
    "Construindo Interfaces": {
      "image": AppImages.laptop,
    },
    "Interação Nativa": {
      "image": AppImages.hierarchy,
    },
    "Widgets do Flutter": {
      "image": AppImages.blocks,
    },
  };

  String get image => types[label]['image'];






  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(image),
            Text(
              label,
              style: GoogleFonts.notoSans(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              children: [
                Text(
                  "3 de 10",
                  style: AppTextStyles.body11,
                ),
                SizedBox(width: 15,),
                Expanded(
                  flex: 1,
                  child: LinearProgressIndicator(
                    value: 0.3,
                    valueColor: AlwaysStoppedAnimation(AppColors.chartPrimary),
                    backgroundColor: AppColors.chartSecondary,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
