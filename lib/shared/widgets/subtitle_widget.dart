import 'package:flutter/material.dart';
import 'package:sinaxys_pay_concept/core/app_colors.dart';

import '../../../core/app_sizes.dart';
import '../../../core/app_text_styles.dart';

class SubtitleWidget extends StatelessWidget {
  final String text;

  const SubtitleWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
            right: AppSizes.spacingSubtitletWidth,
            left: AppSizes.spacingSubtitletWidth,
            bottom: AppSizes.spacingSubtitleHeight),
        child: Text(
          text,
          style: AppTextStyles.subtitle(AppColors.subtitleColor),
        ));
  }
}
