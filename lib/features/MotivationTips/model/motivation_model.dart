import 'package:freezed_annotation/freezed_annotation.dart';

part 'motivation_model.g.dart';
part 'motivation_model.freezed.dart';


@freezed
class MotivationModel with _$MotivationModel {
  factory MotivationModel(
    int id,
    String contents,
    String name,
    ) = _MotivationModel;

  factory MotivationModel.fromJson(Map<String, dynamic> json) => _$MotivationModelFromJson(json);
}