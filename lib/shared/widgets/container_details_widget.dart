import 'package:flutter/cupertino.dart';
import 'package:sinaxys_pay_concept/core/app_colors.dart';

class ContainerDetailsWidget extends StatelessWidget {
  final Widget widget;

  const ContainerDetailsWidget({
    Key? key,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.90,
        decoration: BoxDecoration(
          color: AppColors.backgroundSecundary,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColors.backgroundPrimary,
          ),
        ),
        child: widget,
      ),
    );
  }
}
