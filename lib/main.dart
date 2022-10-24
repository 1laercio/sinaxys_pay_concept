import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sinaxys_pay_concept/modules/account_balance/views/account_balance.dart';
import 'package:sinaxys_pay_concept/modules/payment_voucher/payment_voucher.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'synaxys_pay_concept',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const PaymentVoucher()),
        ChildRoute('/AccountBalance',
            child: (context, args) => const AccountBalance(),
            transition: TransitionType.rightToLeftWithFade,
            duration: const Duration(seconds: 1)),
      ];
}
