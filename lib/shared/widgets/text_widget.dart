import 'package:flutter/material.dart';
import 'package:sinaxys_pay_concept/core/app_colors.dart';

import '../../core/app_sizes.dart';
import '../../core/app_text_styles.dart';

class TextWidget extends StatelessWidget {
  final String text;

  const TextWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          top: AppSizes.spacingTextHeight,
          right: AppSizes.spacingTextWidth,
          left: AppSizes.spacingTextWidth,
        ),
        child: Text(
          text,
          style: AppTextStyles.text(AppColors.textColor),
        ));
  }
}
