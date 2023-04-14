import 'package:vinamilk_b2b/exceptions/exception.dart';

extension EnumListExtension<T extends Enum> on Iterable<T> {
  T byNameIfNull(String name, T defaultValue) {
    try {
      return byName(name);
    } catch (exception, stackTrace) {
      VNMException().capture(exception, stackTrace);
    }
    return defaultValue;
  }
}