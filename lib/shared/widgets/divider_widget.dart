import 'package:flutter/material.dart';
import 'package:sinaxys_pay_concept/core/app_colors.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 10,
      color: AppColors.textColor,
      indent: 15,
      endIndent: 15,
    );
  }
}
