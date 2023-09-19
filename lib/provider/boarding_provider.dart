import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/data_source/local/impl/boarding_local.dart';

final boardingProvider = Provider((ref) => BoardingLocalImpl());

final previouslyBoardedProvider = FutureProvider.autoDispose(
  (ref) => ref.read(boardingProvider).isPreviouslyBoarded(),
);

final putPreviouslyBoardedProvider = FutureProvider.family<bool, bool>(
  (ref, arg) => ref.read(boardingProvider).putPreviouslyBoarded(arg),
);

final boardingPageStateProvider = StateProvider(
  (ref) => 0,
);
