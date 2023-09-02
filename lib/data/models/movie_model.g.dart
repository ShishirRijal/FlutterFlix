// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) => MovieModel(
      tmdbId: json['tmdbId'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      imdbid: json['imdbid'] as String?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      runtime: json['runtime'] as int?,
      director: (json['director'] as List<dynamic>?)
          ?.map((e) => CastModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      writer: (json['writer'] as List<dynamic>?)
          ?.map((e) => CastModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      actors: (json['actors'] as List<dynamic>?)
          ?.map((e) => CastModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      language: json['language'] as String?,
      country: json['country'] as String?,
      boxOffice: json['boxOffice'] as String?,
      overview: json['overview'] as String?,
      production: json['production'] as String?,
      id: json['id'] as String?,
      title: json['title'] as String?,
      poster: json['poster'] as String?,
      backdrop: json['backdrop'] as String?,
      voteAverage: (json['voteAverage'] as num?)?.toDouble(),
      releaseDate: json['releaseDate'] as String?,
      budget: json['budget'] as int?,
      languages: json['languages'] as List<dynamic>?,
      trailer: json['trailer'] == null
          ? null
          : TrailerModel.fromJson(json['trailer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MovieModelToJson(MovieModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'overview': instance.overview,
      'poster': instance.poster,
      'backdrop': instance.backdrop,
      'voteAverage': instance.voteAverage,
      'releaseDate': instance.releaseDate,
      'budget': instance.budget,
      'languages': instance.languages,
      'runtime': instance.runtime,
      'tmdbId': instance.tmdbId,
      'rating': instance.rating,
      'imdbid': instance.imdbid,
      'genres': instance.genres,
      'trailer': instance.trailer?.toJson(),
      'director': instance.director?.map((e) => e.toJson()).toList(),
      'writer': instance.writer?.map((e) => e.toJson()).toList(),
      'actors': instance.actors?.map((e) => e.toJson()).toList(),
      'language': instance.language,
      'country': instance.country,
      'boxOffice': instance.boxOffice,
      'production': instance.production,
    };
