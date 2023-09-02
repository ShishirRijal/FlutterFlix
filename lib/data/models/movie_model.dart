import 'package:freezed_annotation/freezed_annotation.dart';

import 'models.dart';
part 'movie_model.g.dart';

@JsonSerializable(explicitToJson: true)
class MovieModel {
  final String? id;
  final String? title;
  final String? overview;
  final String? poster;
  final String? backdrop;
  final double? voteAverage;
  final String? releaseDate;
  final int? budget;
  final List? languages;
  final int? runtime;
  final String? tmdbId;
  final double? rating;
  final String? imdbid;
  final List<String>? genres;
  final TrailerModel? trailer;

  final List<CastModel>? director;
  final List<CastModel>? writer;
  final List<CastModel>? actors;
  final String? language;
  final String? country;
  final String? boxOffice;

  final String? production;

// named constructor
  MovieModel({
    this.tmdbId,
    this.rating,
    this.imdbid,
    this.genres,
    this.runtime,
    this.director,
    this.writer,
    this.actors,
    this.language,
    this.country,
    this.boxOffice,
    this.overview,
    this.production,
    this.id,
    this.title,
    this.poster,
    this.backdrop,
    this.voteAverage,
    this.releaseDate,
    this.budget,
    this.languages,
    this.trailer,
  });

  // to json
  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);

  // from json
  Map<String, dynamic> toJson() => _$MovieModelToJson(this);
}
