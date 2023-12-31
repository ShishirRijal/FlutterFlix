import 'package:freezed_annotation/freezed_annotation.dart';

import 'models.dart';

part 'tv_series_model.g.dart';

@JsonSerializable(explicitToJson: true)
class TvSeriesModel {
  final String? id;
  final String? title;
  final String? poster;
  final String? backdrop;
  final double? voteAverage;
  final String? year;
  final String? releaseDate;
  final String? tmdbId;
  final String? overview;
  final List<String>? languages;
  final String? tagline;
  final double? rating;
  final String? homepage;
  final List? genres;
  final List<SeasonModel>? seasons;
  final List? created;
  final List? networks;
  final String? numberOfSeasons;
  final String? date;
  final String? formattedDate;
  final String? episodeRuntime;

  TvSeriesModel({
    this.id,
    this.title,
    this.poster,
    this.backdrop,
    this.voteAverage,
    this.year,
    this.releaseDate,
    this.tmdbId,
    this.overview,
    this.languages,
    this.tagline,
    this.rating,
    this.homepage,
    this.genres,
    this.seasons,
    this.created,
    this.networks,
    this.numberOfSeasons,
    this.date,
    this.formattedDate,
    this.episodeRuntime,
  });

  // to json
  factory TvSeriesModel.fromJson(Map<String, dynamic> json) =>
      _$TvSeriesModelFromJson(json);
  // from json
  Map<String, dynamic> toJson() => _$TvSeriesModelToJson(this);
}
