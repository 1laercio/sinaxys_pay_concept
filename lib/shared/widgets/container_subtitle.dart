import 'package:flutter/material.dart';
import 'package:sinaxys_pay_concept/core/app_colors.dart';
import 'package:sinaxys_pay_concept/core/app_text_styles.dart';

class ContainerSubtitleWidget extends StatelessWidget {
  final String text;

  const ContainerSubtitleWidget({Key? key, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
      child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: 50,
              color: AppColors.backgroundPrimary,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: Text(
                      text,style: AppTextStyles.subtitle(AppColors.textColor),
                    ),
                  ),
                ],
              ),
            )
          ]),
    );
  }
}
