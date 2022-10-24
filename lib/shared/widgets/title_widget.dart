import 'package:flutter/material.dart';
import 'package:sinaxys_pay_concept/core/app_colors.dart';
import 'package:sinaxys_pay_concept/core/app_text_styles.dart';

import '../../core/app_sizes.dart';

class TitleWidget extends StatelessWidget {
  final String text;

  const TitleWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
            right: AppSizes.spacingTitletWidth,
            left: AppSizes.spacingTitletWidth,
            ),
        child: Text(
          text,
          style: AppTextStyles.title(AppColors.titleColor),
        ));
  }
}
