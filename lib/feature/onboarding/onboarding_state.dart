import 'package:flutter/cupertino.dart';

@immutable
class OnBoardingState {
  final PageController controller;
  final int index;
  final int maxIndex;

  OnBoardingState copyWith({PageController? controller, int? index, int? maxIndex}) {
    return OnBoardingState(
      controller: controller ?? this.controller,
      maxIndex: maxIndex ?? this.maxIndex,
      index: index ?? this.index,
    );
  }

  const OnBoardingState({
    required this.controller,
    required this.maxIndex,
    this.index = 0,
  });
}

@immutable
class OnBoardingData {
  final String imagePath;
  final String title;
  final String description;

  const OnBoardingData({
    required this.imagePath,
    required this.title,
    required this.description,
  });
}
