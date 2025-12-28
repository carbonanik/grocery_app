import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:instant_grrocery_delivery/features/onboarding/data/source/boarding_local_impl.dart';

final boardingProvider = Provider((ref) => BoardingLocalImpl());

final previouslyBoardedProvider = FutureProvider(
  (ref) async => await ref.read(boardingProvider).isPreviouslyBoarded(),
);

final doneBoardingProvider = FutureProvider(
  (ref) async => await ref.read(boardingProvider).doneBoarding(),
);

final boardingPageStateProvider = StateProvider((ref) => 0);

