import 'package:podo_darae_lab/common/model/Package.dart';

class OpenSourceUtil {
  static T tryConverting<T>(dynamic json) {
    switch (T) {
      case Package:
        return Package.fromJson(json) as T;
      default:
        throw Exception("Please check _tryConverting method");
    }
  }
}