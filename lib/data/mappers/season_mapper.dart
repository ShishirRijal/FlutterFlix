import 'package:flutterflix/data/mappers/episode_mapper.dart';
import 'package:flutterflix/data/models/episode_model.dart';
import 'package:flutterflix/data/models/season_model.dart';
import 'package:flutterflix/domain/entities/entities.dart';
import 'package:flutterflix/utils.dart/utils.dart';

extension SeasonMapper on SeasonModel? {
  Season toEntity() {
    List<EpisodeModel>? episodes = this?.episodes;

    return Season(
      name: this?.name ?? empty,
      overview: this?.overview ?? empty,
      id: this?.id ?? empty,
      posterPath: this?.posterPath ?? empty,
      seasonNumber: this?.seasonNumber ?? empty,
      customDate: this?.customDate ?? empty,
      episodes:
          episodes != null ? episodes.map((e) => e.toEntity()).toList() : [],
    );
  }
}
