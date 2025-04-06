import 'package:json_annotation/json_annotation.dart';

part 'error_model.g.dart';

@JsonSerializable()
class ErrorModel {
  final String? message;
  final String? error;
  final List<String>? password;
  final Map<String, dynamic>? errors;

  ErrorModel({
    this.message,
    this.password,
    this.error,
    this.errors,
  });

  factory ErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorModelToJson(this);
}
