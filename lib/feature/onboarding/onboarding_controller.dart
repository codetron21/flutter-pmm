import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_money_manager/feature/onboarding/onboarding_state.dart';
import 'package:personal_money_manager/theme/image_res.dart';

final onBoardingData = [
  const OnBoardingData(
    imagePath: ImageRes.imageOnboarding1,
    title: "Manage Your Budgeting",
    description: "Easy manage your income and expense into category.",
  ),
  const OnBoardingData(
    imagePath: ImageRes.imageOnboarding2,
    title: "Track Your Expense",
    description: "Easy tracking and find your most spending at.",
  ),
  const OnBoardingData(
    imagePath: ImageRes.imageOnboarding3,
    title: "Set Your Goal",
    description: "You can set goals for your income and expense.",
  ),
];

final onBoardingProvider = StateNotifierProvider.autoDispose<OnBoardingController,OnBoardingState>(
  (_) => OnBoardingController(
    OnBoardingState(
      controller: PageController(),
      maxIndex: onBoardingData.length,
    ),
  ),
);

class OnBoardingController extends StateNotifier<OnBoardingState> {
  OnBoardingController(OnBoardingState state) : super(state) {
    state.controller.addListener(() {
      double currentIndex = state.controller.page ?? 0;
      int maxIndex = state.maxIndex;

      if (currentIndex >= maxIndex) {
        return;
      }

      int index = currentIndex.round();
      state = state.copyWith(index: index);
    });
  }

  @override
  void dispose() {
    state.controller.dispose();
    super.dispose();
  }
}
