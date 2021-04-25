import 'package:aula_1_flutter_nlw/corenwl/app_gradients.dart';
import 'package:aula_1_flutter_nlw/corenwl/app_text_styles.dart';
import 'package:aula_1_flutter_nlw/models/user_model.dart';
import 'package:aula_1_flutter_nlw/widgets/scorecard/score_card_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  final UserModel userModel;
  AppBarWidget({required this.userModel})
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
                                text: userModel.name,
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
                              image: NetworkImage(userModel.photoUrl),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0.0, 1),
                  child: ScoreCardWidget(percent: userModel.score/100,),
                ),
              ],
            ),
          ),
        );
}
