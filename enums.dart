import 'dart:math';

import '../core/exception/index.dart';

extension EnumListExtension<T extends Enum> on Iterable<T> {
  T byNameIfNull(String name, T defaultValue) {
    try {
      return byName(name);
    } catch (exception, stackTrace) {
      VNMException().capture(exception, stackTrace);
    }
    return defaultValue;
  }

  T get random => this.toList()[Random().nextInt(9999) % length];
}
