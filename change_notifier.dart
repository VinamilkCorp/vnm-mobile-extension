import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

extension ChangeNotifierCreator on ChangeNotifier {
  ChangeNotifierProvider create<T extends ChangeNotifier>() =>
      ChangeNotifierProvider<T>(create: (_) => this as T);
}
