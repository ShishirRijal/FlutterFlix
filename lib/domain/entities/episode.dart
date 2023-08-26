import 'package:flutterflix/domain/entities/entities.dart';

class Episode {
  final String id;
  final String name;
  final String overview;
  final String seasonNumber;
  final String stillPath;
  final double voteAverage;
  final String date;
  final String number;
  final String customDate;
  final List<Cast> castInfoList;

  Episode({
    required this.id,
    required this.name,
    required this.overview,
    required this.seasonNumber,
    required this.stillPath,
    required this.voteAverage,
    required this.date,
    required this.number,
    required this.customDate,
    required this.castInfoList,
  });
}
