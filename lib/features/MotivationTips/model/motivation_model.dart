import 'package:json_annotation/json_annotation.dart';
part 'motivation_model.g.dart';

@JsonSerializable()

class MotivationModel {
  const MotivationModel({
    required this.id,
    required this.contents,
    required this.name,
  });

  final int id;
  final String contents;
  final String name;

   factory MotivationModel.fromJson(Map<String, dynamic> json) => _$MotivationModelFromJson(json);

Map<String, dynamic> toJson() => _$MotivationModelToJson(this);

}