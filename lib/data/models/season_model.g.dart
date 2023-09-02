// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeasonModel _$SeasonModelFromJson(Map<String, dynamic> json) => SeasonModel(
      name: json['name'] as String?,
      overview: json['overview'] as String?,
      id: json['id'] as String?,
      posterPath: json['posterPath'] as String?,
      seasonNumber: json['seasonNumber'] as String?,
      customDate: json['customDate'] as String?,
      episodes: (json['episodes'] as List<dynamic>?)
          ?.map((e) => EpisodeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SeasonModelToJson(SeasonModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'overview': instance.overview,
      'id': instance.id,
      'posterPath': instance.posterPath,
      'seasonNumber': instance.seasonNumber,
      'customDate': instance.customDate,
      'episodes': instance.episodes,
    };
