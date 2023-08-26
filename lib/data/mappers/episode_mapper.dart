import 'package:flutterflix/data/mappers/cast_mapper.dart';
import 'package:flutterflix/data/models/episode_model.dart';
import 'package:flutterflix/domain/entities/entities.dart';
import 'package:flutterflix/utils.dart/utils.dart';

import '../models/cast_model.dart';

extension EpisodeMapper on EpisodeModel? {
  Episode toEntity() {
    List<CastModel>? castList = this?.castInfoList;

    return Episode(
      id: this?.id ?? empty,
      name: this?.name ?? empty,
      overview: this?.overview ?? empty,
      seasonNumber: this?.seasonNumber ?? empty,
      stillPath: this?.stillPath ?? empty,
      voteAverage: this?.voteAverage ?? 0.0,
      date: this?.date ?? empty,
      number: this?.number ?? empty,
      customDate: this?.customDate ?? empty,
      castInfoList:
          castList != null ? castList.map((e) => e.toEntity()).toList() : [],
    );
  }
}
