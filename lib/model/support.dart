import 'package:json_annotation/json_annotation.dart';

part 'support.g.dart';

@JsonSerializable(explicitToJson: true)
class Support{
  final int id;
  final String subject;
  final String message;

  Support({
    required this.id,
    required this.subject,
    required this.message
  });

  Map<String, dynamic> toJson() => _$SupportToJson(this);

  factory Support.fromJson(Map<String, dynamic> source) =>
      _$SupportFromJson(source);
}