import 'package:freezed_annotation/freezed_annotation.dart';


part 'support.g.dart';
part 'support.freezed.dart';

@freezed
class Support with _$Support {

  const factory Support({
    required int id,
    required String subject,
    required String message,
  }) = _Support;


  factory Support.fromJson(Map<String, dynamic> source) =>
      _$SupportFromJson(source);
}