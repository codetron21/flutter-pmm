import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_money_manager/feature/onboarding/onboarding_screen.dart';

class PMMRouter {
  static GoRouter get() {
    return GoRouter(
      routes: [
        GoRoute(
          path: "/",
          builder: (BuildContext context, GoRouterState state) {
            return const OnBoardingScreen();
          },
        ),
      ],
    );
  }
}
