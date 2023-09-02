// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_series_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TvSeriesModel _$TvSeriesModelFromJson(Map<String, dynamic> json) =>
    TvSeriesModel(
      id: json['id'] as String?,
      title: json['title'] as String?,
      poster: json['poster'] as String?,
      backdrop: json['backdrop'] as String?,
      voteAverage: (json['voteAverage'] as num?)?.toDouble(),
      year: json['year'] as String?,
      releaseDate: json['releaseDate'] as String?,
      tmdbId: json['tmdbId'] as String?,
      overview: json['overview'] as String?,
      languages: (json['languages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      tagline: json['tagline'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      homepage: json['homepage'] as String?,
      genres: json['genres'] as List<dynamic>?,
      seasons: (json['seasons'] as List<dynamic>?)
          ?.map((e) => SeasonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      created: json['created'] as List<dynamic>?,
      networks: json['networks'] as List<dynamic>?,
      numberOfSeasons: json['numberOfSeasons'] as String?,
      date: json['date'] as String?,
      formattedDate: json['formattedDate'] as String?,
      episodeRuntime: json['episodeRuntime'] as String?,
    );

Map<String, dynamic> _$TvSeriesModelToJson(TvSeriesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'poster': instance.poster,
      'backdrop': instance.backdrop,
      'voteAverage': instance.voteAverage,
      'year': instance.year,
      'releaseDate': instance.releaseDate,
      'tmdbId': instance.tmdbId,
      'overview': instance.overview,
      'languages': instance.languages,
      'tagline': instance.tagline,
      'rating': instance.rating,
      'homepage': instance.homepage,
      'genres': instance.genres,
      'seasons': instance.seasons?.map((e) => e.toJson()).toList(),
      'created': instance.created,
      'networks': instance.networks,
      'numberOfSeasons': instance.numberOfSeasons,
      'date': instance.date,
      'formattedDate': instance.formattedDate,
      'episodeRuntime': instance.episodeRuntime,
    };
