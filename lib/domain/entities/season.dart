import 'package:flutterflix/domain/entities/episode.dart';

class Season {
  final String name;
  final String overview;
  final String id;
  final String posterPath;
  final String seasonNumber;
  final String customDate;
  final List<Episode>? episodes;
  Season({
    required this.name,
    required this.overview,
    required this.id,
    required this.posterPath,
    required this.seasonNumber,
    required this.customDate,
    required this.episodes,
  });
}
