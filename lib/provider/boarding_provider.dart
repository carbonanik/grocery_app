import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/data_source/local/impl/boarding_local_impl.dart';

final boardingProvider = Provider((ref) => BoardingLocalImpl());

final previouslyBoardedProvider = FutureProvider(
  (ref) async => await ref.read(boardingProvider).isPreviouslyBoarded(),
);

final doneBoardingProvider = FutureProvider(
  (ref) async => await ref.read(boardingProvider).doneBoarding(),
);

final boardingPageStateProvider = StateProvider(
  (ref) => 0,
);
