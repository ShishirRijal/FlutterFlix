import 'package:freezed_annotation/freezed_annotation.dart';

part 'cast_model.g.dart';

@JsonSerializable()
class CastModel {
  final String? id;
  final String? name;
  final String? image;
  CastModel({
    this.name,
    this.image,
    this.id,
  });

  // to json
  factory CastModel.fromJson(Map<String, dynamic> json) =>
      _$CastModelFromJson(json);
  // from json
  Map<String, dynamic> toJson() => _$CastModelToJson(this);
}
