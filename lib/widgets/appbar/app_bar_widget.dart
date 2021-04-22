import 'package:aula_1_flutter_nlw/corenwl/app_gradients.dart';
import 'package:aula_1_flutter_nlw/corenwl/app_text_styles.dart';
import 'package:aula_1_flutter_nlw/widgets/scorecard/score_card_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            //color: Color(0XFFDCDCE6),
            height: 250,
            child: Stack(
              children: [
                Container(
                  height: 161,
                  decoration: BoxDecoration(
                    gradient: AppGradients.linearRedBlackBluegray,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(
                          TextSpan(
                            text: "Olá, ",
                            style: AppTextStyles.title,
                            children: [
                              TextSpan(
                                text: "Gustavo",
                                style: AppTextStyles.titleBold,
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 58,
                          height: 58,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/47922321?s=400&u=bcc93afb08677f738aa942e92d9341490f9a0053&v=4"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0.0, 1),
                  child: ScoreCardWidget(),
                ),
              ],
            ),
          ),
        );
}
