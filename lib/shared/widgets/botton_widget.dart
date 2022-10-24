import 'package:flutter/material.dart';
import 'package:sinaxys_pay_concept/core/app_text_styles.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  final Color color;
  final double width;
  final double height;
  final double? elevation;
  final Color textColor;

  const ButtonWidget({
    Key? key,
    required this.text,
    this.onTap,
    required this.color,
    required this.width,
    this.elevation,
    required this.height,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35,right: 10,),
      child: TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
          minimumSize: Size(width, height),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          backgroundColor: color,
          elevation: elevation,
        ),
        child: Text(
          text,
          style: AppTextStyles.subtitle(textColor),
        ),
      ),
    );
  }
}
