import 'package:equatable/equatable.dart';

class Trailer extends Equatable {
  final String id;
  final String site;
  final String name;
  const Trailer({
    required this.id,
    required this.site,
    required this.name,
  });

  @override
  List<Object?> get props => [id, site, name];

  const Trailer.empty({
    this.id = "",
    this.site = "",
    this.name = "",
  });
}
