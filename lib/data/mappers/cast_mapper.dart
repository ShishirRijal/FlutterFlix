import 'package:flutterflix/data/models/models.dart';
import 'package:flutterflix/domain/entities/entities.dart';
import 'package:flutterflix/utils.dart/utils.dart';

extension CastMapper on CastModel? {
  Cast toEntity() {
    return Cast(
      name: this?.name ?? empty,
      image: this?.image ?? empty,
      id: this?.id ?? empty,
    );
  }
}
