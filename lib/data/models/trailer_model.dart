import 'package:freezed_annotation/freezed_annotation.dart';

part 'trailer_model.g.dart';

@JsonSerializable()
class TrailerModel {
  final String? id;
  final String? site;
  final String? name;
  TrailerModel({
    this.id,
    this.site,
    this.name,
  });

  // to json
  factory TrailerModel.fromJson(Map<String, dynamic> json) =>
      _$TrailerModelFromJson(json);
  // from json
  Map<String, dynamic> toJson() => _$TrailerModelToJson(this);
}
