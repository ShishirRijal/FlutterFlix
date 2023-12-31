import 'package:flutter/material.dart';

class Genre {
  final String id;
  final String name;
  final String image;
  final Color color;
  Genre({
    required this.color,
    required this.image,
    required this.id,
    required this.name,
  });
  factory Genre.fromJson(json) {
    return Genre(
      id: json['id'].toString(),
      name: json['name'],
      image: json['image'],
      color: json['color'],
    );
  }
}

// Generate list of genres from json
class GenresList {
  final List<Genre> list;
  GenresList({
    required this.list,
  });
  factory GenresList.fromJson(json) {
    return GenresList(
        list: (json as List).map((genre) => Genre.fromJson(genre)).toList());
  }
}

// JSON of genres
final genreslist = [
  {
    "id": 11,
    "name": "Action",
    "image":
        "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/3FUJT82YKY1EJ1dmunQhW5PUZAT.jpg",
    "color": const Color(0xFFA59A04),
  },
  {
    "id": 12,
    "name": "Adventure",
    "image":
        "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/tOEOlmLP71IojeJ91dyJ9Nsb8O8.jpg",
    "color": const Color(0xff1d0d87)
  },
  {
    "id": 45,
    "name": "Animation",
    "image":
        "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/4nssBcQUBadCTBjrAkX46mVEKts.jpg",
    "color": const Color(0xFF036B4C)
  },
  {
    "id": 23,
    "name": "Comedy",
    "image":
        "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/8kOWDBK6XlPUzckuHDo3wwVRFwt.jpg",
    "color": const Color(0xff375304)
  },
  {
    "id": 233,
    "name": "Crime",
    "image":
        "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/6PX0r5TRRU5y0jZ70y1OtbLYmoD.jpg",
    "color": const Color(0xff4004d7)
  },
  {
    "id": 67,
    "name": "Documentary",
    "image":
        "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/n0ybibhJtQ5icDqTp8eRytcIHJx.jpg",
    "color": const Color(0xFF6A680B)
  },
  {
    "id": 76,
    "name": "Drama",
    "image":
        "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/nel144y4dIOdFFid6twN5mAX9Yd.jpg",
    "color": const Color(0xFF7D0396)
  },
  {
    "id": 455,
    "name": "Family",
    "image":
        "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/uwslHj6nEyPX5IbNXhuEeI0PTth.jpg",
    "color": const Color(0xFF03774B)
  },
  {
    "id": 344,
    "name": "Fantasy",
    "image":
        "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/kEl2t3OhXc3Zb9FBh1AuYzRTgZp.jpg",
    "color": const Color(0xff039620)
  },
  {
    "id": 231,
    "name": "History",
    "image":
        "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/bQLrHIRNEkE3PdIWQrZHynQZazu.jpg",
    "color": const Color(0xffb49208)
  },
  {
    "id": 356,
    "name": "Horror",
    "image":
        "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/7pEn2fCFWa8DIwQnxG6Cq7iaKLv.jpg",
    "color": const Color(0xFF682303)
  },
  {
    "id": 234,
    "name": "Music",
    "image":
        "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/gbmkFWdtihe1VfydTDsieQ6VfGL.jpg",
    "color": const Color(0xffc01111)
  },
  {
    "id": 121,
    "name": "Mystery",
    "image":
        "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/o6qT33idpxWV51FsIjAyGDyp5Ou.jpg",
    "color": const Color(0xff504907)
  },
  {
    "id": 111,
    "name": "Romance",
    "image":
        "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/9yguvvrOG8dBVIbxCst0GyzVJu1.jpg",
    "color": const Color(0xffa00e80)
  },
  {
    "id": 555,
    "name": "Science Fiction",
    "image":
        "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/th5UkDLIa7yyma9UYDAWaIgDh6z.jpg",
    "color": const Color(0xff8a08b5)
  },
  {
    "id": 88,
    "name": "Thriller",
    "image":
        "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vqzNJRH4YyquRiWxCCOH0aXggHI.jpg",
    "color": const Color(0xff0b7f1e)
  },
  {
    "id": 99,
    "name": "War",
    "image":
        "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/34nDCQZwaEvsy4CFO5hkGRFDCVU.jpg",
    "color": const Color(0xff9d105b)
  },
  {
    "id": 77,
    "name": "Western",
    "image":
        "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/uHA5COgDzcxjpYSHHulrKVl6ByL.jpg",
    "color": const Color(0xffb49208)
  },
];
