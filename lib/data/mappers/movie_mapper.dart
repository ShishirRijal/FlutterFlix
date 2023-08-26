import 'package:flutterflix/core/extensions.dart';
import 'package:flutterflix/data/mappers/cast_mapper.dart';
import 'package:flutterflix/data/mappers/trailer_mapper.dart';
import 'package:flutterflix/data/models/cast_model.dart';
import 'package:flutterflix/data/models/movie_model.dart';
import 'package:flutterflix/domain/entities/entities.dart';
import 'package:flutterflix/utils.dart/utils.dart';

extension MovieMapper on MovieModel? {
  Movie toEntity() {
    List<CastModel>? directorList = this?.director;
    List<CastModel>? writerList = this?.writer;
    List<CastModel>? actorsList = this?.actors;

    return Movie(
      id: this?.id ?? empty,
      title: this?.title ?? empty,
      overview: this?.overview ?? empty,
      poster: this?.poster ?? empty,
      backdrop: this?.backdrop ?? empty,
      voteAverage: this?.voteAverage.orZero() ?? 0.0,
      releaseDate: this?.releaseDate ?? empty,
      budget: this?.budget ?? 0,
      languages: this?.languages ?? [],
      runtime: this?.runtime ?? 0,
      tmdbId: this?.tmdbId ?? empty,
      rating: this?.rating ?? 0.0,
      imdbid: this?.imdbid ?? empty,
      genres: this?.genres ?? [],
      trailer: this?.trailer.toEntity() ?? const Trailer.empty(),
      director: directorList != null
          ? directorList.map((e) => e.toEntity()).toList()
          : [],
      writer: writerList != null
          ? writerList.map((e) => e.toEntity()).toList()
          : [],
      actors: actorsList != null
          ? actorsList.map((e) => e.toEntity()).toList()
          : [],
      language: this?.language ?? empty,
      country: this?.country ?? empty,
      boxOffice: this?.boxOffice ?? empty,
      production: this?.production ?? empty,
    );
  }
}
