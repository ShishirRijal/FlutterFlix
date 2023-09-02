import 'package:freezed_annotation/freezed_annotation.dart';

import 'episode_model.dart';
part 'season_model.g.dart';

@JsonSerializable()
class SeasonModel {
  final String? name;
  final String? overview;
  final String? id;
  final String? posterPath;
  final String? seasonNumber;
  final String? customDate;
  final List<EpisodeModel>? episodes;
  SeasonModel({
    this.name,
    this.overview,
    this.id,
    this.posterPath,
    this.seasonNumber,
    this.customDate,
    this.episodes,
  });

  // to json
  factory SeasonModel.fromJson(Map<String, dynamic> json) =>
      _$SeasonModelFromJson(json);
  // from json
  Map<String, dynamic> toJson() => _$SeasonModelToJson(this);
}
