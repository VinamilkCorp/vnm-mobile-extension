import 'dart:math';

import '../material/exception/exception.dart';

extension EnumListExtension<T extends Enum> on Iterable<T> {
  T byNameIfNull(String name, T defaultValue) {
    T value = defaultValue;
    try {
      value = byName(name);
    } catch (exception, stackTrace) {
      VNMException().capture(exception, stackTrace);
    } finally {
      return value;
    }
  }

  T get random => this.toList()[Random().nextInt(9999) % length];
}
