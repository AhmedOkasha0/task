// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'errors_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorsListModel _$ErrorsListModelFromJson(Map<String, dynamic>? json) => ErrorsListModel(
     phoneNumber: json!['phonenumber'] as List<dynamic>?,
     email: json['email'] as List<dynamic>?,
     password: json['password'] as List<dynamic>?,
    );

Map<String, dynamic> _$ErrorsListModelToJson(ErrorsListModel instance) =>
    <String, dynamic>{
      'phonenumber': instance.phoneNumber,
      'email': instance.email,
      'password': instance.password,
    };
