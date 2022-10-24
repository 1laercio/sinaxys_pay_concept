import 'package:flutter/material.dart';
import 'package:sinaxys_pay_concept/core/app_colors.dart';
import 'package:sinaxys_pay_concept/core/app_sizes.dart';
import 'package:sinaxys_pay_concept/core/app_text_styles.dart';
import 'package:sinaxys_pay_concept/shared/widgets/bottom_navigator.dart';
import 'package:sinaxys_pay_concept/shared/widgets/botton_widget.dart';
import 'package:sinaxys_pay_concept/shared/widgets/container_subtitle.dart';
import 'package:sinaxys_pay_concept/shared/widgets/payments/cardwidget.dart';
import 'package:sinaxys_pay_concept/shared/widgets/text_widget.dart';
import 'package:sinaxys_pay_concept/shared/widgets/title_widget.dart';

import '../../../shared/widgets/container_details_widget.dart';
import '../../../shared/widgets/divider_widget.dart';
import '../../../shared/widgets/subtitle_widget.dart';

class AccountBalance extends StatefulWidget {
  const AccountBalance({Key? key}) : super(key: key);

  @override
  State<AccountBalance> createState() => _AccountBalanceState();
}

class _AccountBalanceState extends State<AccountBalance> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: const BottomNavigator(),
          backgroundColor: AppColors.backgroundSecundary,
          body: Column(children: [
            const CardWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 6,
                  child: Column(children: const [
                    TextWidget(text: "Saldo Disponível"),
                    TitleWidget(text: 'R\$ 450,00')
                  ]),
                ),
                Expanded(
                  flex: 4,
                  child: Column(children: const [
                    ButtonWidget(
                        text: 'Resgatar',
                        color: AppColors.bottomColor,
                        width: AppSizes.textbuttonWidthSmall,
                        height: AppSizes.textbuttonHeight,
                        textColor: AppColors.textButtonColor)
                  ]),
                ),
              ],
            ),
            const ContainerSubtitleWidget(text: 'PAGAMENTOS'),
            ContainerDetailsWidget(
                widget: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  TextWidget(text: 'Pagamento Efetuado'),
                  TextWidget(text: '20/05/22')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  TextWidget(text: 'Local AmorSaúde Alvorada'),
                  TextWidget(text: '05/05/22')
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SubtitleWidget(text: 'Valor Total'),
                    SubtitleWidget(text: 'R\$ 450,00')
                  ],
                ),
              ),
              const DividerWidget(),
              Padding(
                padding: const EdgeInsets.only(top:10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                        child: Text("Ver detalhes",
                            style: AppTextStyles.detalhes(AppColors.bottomColor)))
                  ],
                ),
              ),
            ])),
          ])),
    );
  }
}
