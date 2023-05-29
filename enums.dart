import 'dart:math';

extension EnumListExtension<T extends Enum> on Iterable<T> {
  T byNameIfNull(String name, T defaultValue) {
    T value = defaultValue;
    try {
      value = byName(name);
    } catch (exception, stackTrace) {
      throw exception;
    } finally {
      return value;
    }
  }

  T get random => this.toList()[Random().nextInt(9999) % length];
}
