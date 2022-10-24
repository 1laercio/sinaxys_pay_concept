import 'package:flutter/material.dart';
import 'package:sinaxys_pay_concept/core/app_colors.dart';

class IconWidget extends StatelessWidget {
  final IconData? icons;
  final VoidCallback? onTap;
  final Color? backgroudColor;

  const IconWidget({
    Key? key,
    this.icons,
    this.onTap,
    this.backgroudColor,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Ink(
        decoration: ShapeDecoration(
          color: backgroudColor,
          shape: const CircleBorder(),
        ),
        child: IconButton(
          iconSize: 25,
          icon: Icon(icons),
          color: AppColors.iconColor,
          onPressed: () {},
        ),
      ),
    );
  }
}
