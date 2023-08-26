import 'package:flutterflix/data/models/trailer_model.dart';
import 'package:flutterflix/domain/entities/entities.dart';
import 'package:flutterflix/utils.dart/utils.dart';

extension TrailerMapper on TrailerModel? {
  Trailer toEntity() {
    return Trailer(
      id: this?.id ?? empty,
      site: this?.site ?? empty,
      name: this?.name ?? empty,
    );
  }
}
