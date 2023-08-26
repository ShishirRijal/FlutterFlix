import 'episode_model.dart';

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
}
