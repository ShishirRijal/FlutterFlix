import 'package:equatable/equatable.dart';

class Cast extends Equatable {
  final String id;
  final String name;
  final String image;
  const Cast({
    required this.name,
    required this.image,
    required this.id,
  });

  @override
  List<Object?> get props => [id, name, image];
}
