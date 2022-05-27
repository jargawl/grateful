// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'motivation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MotivationModel _$MotivationModelFromJson(Map<String, dynamic> json) =>
    MotivationModel(
      id: json['id'] as int,
      contents: json['contents'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$MotivationModelToJson(MotivationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contents': instance.contents,
      'name': instance.name,
    };
