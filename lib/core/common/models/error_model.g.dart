// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorModel _$ErrorModelFromJson(Map<String, dynamic> json) => ErrorModel(
     message: json['message'] as String?,
     error: json['error'] as String?,
     password: json['password'] as List<String>?,
     errors: json['errors'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ErrorModelToJson(ErrorModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'error': instance.error,
      'password': instance.password,
      'errors': instance.errors,
    };
