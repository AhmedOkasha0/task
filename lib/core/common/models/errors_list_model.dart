import 'package:json_annotation/json_annotation.dart';

part 'errors_list_model.g.dart';

@JsonSerializable()
class ErrorsListModel {
  final List<dynamic>? password;
  final List<dynamic>? phoneNumber;
  final List<dynamic>? email;

  ErrorsListModel({
    this.password,
    this.phoneNumber,
    this.email,
  });

  factory ErrorsListModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorsListModelFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorsListModelToJson(this);
}
