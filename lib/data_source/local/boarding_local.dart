abstract class BoardingLocal {
  Future<bool> isPreviouslyBoarded();

  Future<void> putPreviouslyBoarded(bool boarded);
}
