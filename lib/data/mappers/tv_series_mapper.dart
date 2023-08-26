import 'package:flutterflix/data/mappers/season_mapper.dart';
import 'package:flutterflix/data/models/season_model.dart';

import '../../domain/entities/tv_series.dart';
import '../models/tv_series_model.dart';

extension TvSeriesMapper on TvSeriesModel? {
  TvSeries toEntity() {
    final List<SeasonModel>? seasons = this?.seasons;
    return TvSeries(
      id: this?.id ?? '',
      title: this?.title ?? '',
      poster: this?.poster ?? '',
      backdrop: this?.backdrop ?? '',
      voteAverage: this?.voteAverage ?? 0.0,
      year: this?.year ?? '',
      releaseDate: this?.releaseDate ?? '',
      tmdbId: this?.tmdbId ?? '',
      overview: this?.overview ?? '',
      languages: this?.languages ?? [],
      tagline: this?.tagline ?? '',
      rating: this?.rating ?? 0.0,
      homepage: this?.homepage ?? '',
      genres: this?.genres ?? [],
      seasons: seasons != null ? seasons.map((e) => e.toEntity()).toList() : [],
      created: this?.created ?? [],
      networks: this?.networks ?? [],
      numberOfSeasons: this?.numberOfSeasons ?? '',
      date: this?.date ?? '',
      formattedDate: this?.formattedDate ?? '',
      episodeRuntime: this?.episodeRuntime ?? '',
    );
  }
}
