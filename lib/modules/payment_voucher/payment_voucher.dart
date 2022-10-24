import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sinaxys_pay_concept/core/app_colors.dart';
import 'package:sinaxys_pay_concept/core/app_sizes.dart';
import 'package:sinaxys_pay_concept/shared/widgets/container_details_widget.dart';
import 'package:sinaxys_pay_concept/shared/widgets/icon_widget.dart';
import 'package:sinaxys_pay_concept/shared/widgets/subtitle_widget.dart';
import 'package:sinaxys_pay_concept/shared/widgets/text_widget.dart';
import 'package:sinaxys_pay_concept/shared/widgets/title_widget.dart';

import '../../shared/widgets/botton_widget.dart';
import '../../shared/widgets/divider_widget.dart';

class PaymentVoucher extends StatelessWidget {
  const PaymentVoucher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.backgroundPrimary,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    IconWidget(
                      icons: Icons.close,
                      backgroudColor: AppColors.backgroundIcon,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: SubtitleWidget(text: 'Olá, Rafaela Pasini'),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [TitleWidget(text: 'Comprovante de')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [TitleWidget(text: 'Crédito efetuado')],
                ),
                ContainerDetailsWidget(
                  widget: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          TextWidget(text: 'Creditado Por'),
                          TextWidget(text: 'AmorSaúde Alvorada')
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          TextWidget(text: 'Data'),
                          TextWidget(text: '05/05/22')
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            SubtitleWidget(text: 'Valor Total'),
                            SubtitleWidget(text: 'R\$ 450,00')
                          ],
                        ),
                      ),
                      const DividerWidget(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          TextWidget(text: 'Previsão de Recebimento'),
                          TextWidget(text: '20/05/22')
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          TextWidget(text: 'em 15 dias'),
                        ],
                      ),
                      const DividerWidget(),
                      InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:  [
                             Padding(
                               padding: const EdgeInsets.all(20.0),
                               child: Image.asset('assets/detalhes.png',
                               width: 20,),
                             ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: SubtitleWidget(text: 'Ver Detalhes dos Serviços'),
                            )
                          ],
                        ),
                      ),
                      const DividerWidget(),
                      InkWell(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            IconWidget(icons: Icons.file_download_outlined),
                            Padding(
                              padding: EdgeInsets.only(top:10),
                              child: SubtitleWidget(text: 'Salvar Comprovante'),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                ButtonWidget(
                    color: AppColors.bottomColor,
                    height: AppSizes.textbuttonHeight,
                    textColor: AppColors.textButtonColor,
                    width: AppSizes.textbuttonWidthLarge,
                    text: 'Ver meu Saldo completo',
                    onTap: () {
                      Modular.to.navigate('/AccountBalance');
                    })
              ],
            ),
          )),
    );
  }
}
