import 'package:flutter/material.dart';
import 'package:sinaxys_pay_concept/core/app_colors.dart';
import 'package:sinaxys_pay_concept/core/app_text_styles.dart';

class BottomNavigator extends StatelessWidget {
  const BottomNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: AppColors.backgroundSecundary,
        border: Border.all(
          color: const Color.fromARGB(255, 206, 198, 198),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Column(
              children: [
                IconButton(
                  enableFeedback: false,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.local_hospital_outlined,
                    color: AppColors.textColor,
                    size: 25,
                  ),
                ),
                Text(
                  'Home',
                  style: AppTextStyles.text(AppColors.textColor),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                IconButton(
                  enableFeedback: false,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.account_balance_wallet_outlined,
                    color: AppColors.textColor,
                    size: 25,
                  ),
                ),
                Text(
                  'SinaxisPay',
                  style: AppTextStyles.text(AppColors.textColor),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                IconButton(
                  enableFeedback: true,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.chat_bubble_outline_outlined,
                    color: AppColors.textColor,
                    size: 25,
                  ),
                ),
                Text(
                  'Mensagens',
                  style: AppTextStyles.text(AppColors.textColor),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
