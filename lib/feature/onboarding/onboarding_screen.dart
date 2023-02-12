import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_money_manager/core/constant.dart';
import 'package:personal_money_manager/feature/onboarding/onboarding_controller.dart';
import 'package:personal_money_manager/feature/onboarding/onboarding_state.dart';
import 'package:personal_money_manager/theme/palette.dart';
import 'package:personal_money_manager/theme/style.dart';

class OnBoardingScreen extends ConsumerWidget {
  static String route = "/onboarding";

  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wProvider = ref.watch(onBoardingProvider);

    return Scaffold(
      backgroundColor: Palette.white,
      body: Stack(
        children: [
          PageView(
            controller: wProvider.controller,
            children:
                onBoardingData.map((e) => Image.asset(e.imagePath)).toList(),
          ),
          Positioned(
            bottom: 0,
            child: infoOnBoarding(
              context,
              onBoardingData[wProvider.index],
            ),
          )
        ],
      ),
    );
  }

  Widget infoOnBoarding(BuildContext context, OnBoardingData data) {
    final height = MediaQuery.of(context).size.height * 0.3;
    return Container(
      height: height,
      decoration:  const BoxDecoration(
        color: Palette.background,
        boxShadow: [
          BoxShadow(
            color: Palette.primary,
            offset: Offset(0, -2),
            blurRadius: 8,
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(kRadius),
          topRight: Radius.circular(kRadius),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(kMediumPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(data.title,style: PMMStyle.titleStyle(),),
            const SizedBox(height: 8),
           Text(data.description,),
          ],
        ),
      ),
    );
  }
}
