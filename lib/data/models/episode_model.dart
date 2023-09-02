import 'package:freezed_annotation/freezed_annotation.dart';

import 'cast_model.dart';
part 'episode_model.g.dart';

@JsonSerializable(explicitToJson: true)
class EpisodeModel {
  final String? id;
  final String? name;
  final String? overview;
  final String? seasonNumber;
  final String? stillPath;
  final double? voteAverage;
  final String? date;
  final String? number;
  final String? customDate;
  final List<CastModel>? castInfoList;

  EpisodeModel({
    this.id,
    this.name,
    this.overview,
    this.seasonNumber,
    this.stillPath,
    this.voteAverage,
    this.date,
    this.number,
    this.customDate,
    this.castInfoList,
  });

  // to json
  factory EpisodeModel.fromJson(Map<String, dynamic> json) =>
      _$EpisodeModelFromJson(json);

  // from json
  Map<String, dynamic> toJson() => _$EpisodeModelToJson(this);
}
