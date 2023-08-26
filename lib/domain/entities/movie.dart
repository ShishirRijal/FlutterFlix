import 'entities.dart';

class Movie {
  static const imageBasePath = "https://image.tmdb.org/t/p/w500";
  final String id;
  final String title;
  final String overview;
  final String poster;
  final String backdrop;
  final double voteAverage;
  final String releaseDate;
  final int budget;
  final List languages;
  final int runtime;
  final String tmdbId;
  final double rating;
  final String imdbid;
  final List<String> genres;
  final Trailer trailer;

  final List<Cast> director;
  final List<Cast> writer;
  final List<Cast> actors;
  final String language;
  final String country;
  final String boxOffice;

  final String production;

// named constructor
  Movie({
    required this.tmdbId,
    required this.imdbid,
    required this.genres,
    required this.rating,
    required this.runtime,
    required this.director,
    required this.writer,
    required this.actors,
    required this.language,
    required this.country,
    required this.boxOffice,
    required this.overview,
    required this.production,
    required this.id,
    required this.title,
    required this.poster,
    required this.backdrop,
    required this.voteAverage,
    required this.releaseDate,
    required this.budget,
    required this.languages,
    required this.trailer,
  });
}
