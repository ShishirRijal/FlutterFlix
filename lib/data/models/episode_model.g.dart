// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EpisodeModel _$EpisodeModelFromJson(Map<String, dynamic> json) => EpisodeModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      overview: json['overview'] as String?,
      seasonNumber: json['seasonNumber'] as String?,
      stillPath: json['stillPath'] as String?,
      voteAverage: (json['voteAverage'] as num?)?.toDouble(),
      date: json['date'] as String?,
      number: json['number'] as String?,
      customDate: json['customDate'] as String?,
      castInfoList: (json['castInfoList'] as List<dynamic>?)
          ?.map((e) => CastModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EpisodeModelToJson(EpisodeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'overview': instance.overview,
      'seasonNumber': instance.seasonNumber,
      'stillPath': instance.stillPath,
      'voteAverage': instance.voteAverage,
      'date': instance.date,
      'number': instance.number,
      'customDate': instance.customDate,
      'castInfoList': instance.castInfoList?.map((e) => e.toJson()).toList(),
    };
