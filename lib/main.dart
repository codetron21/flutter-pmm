import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_money_manager/router/app_router.dart';
import 'package:personal_money_manager/theme/theme.dart';

void main() {
  runApp(const ProviderScope(child: PersonalMoneyManagerApp()));
}

class PersonalMoneyManagerApp extends StatelessWidget {

  const PersonalMoneyManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: PMMRouter.get(),
      theme: PMMTheme.theme(context),
    );
  }
}