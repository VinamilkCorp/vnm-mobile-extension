import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:vinamilk_b2b/util/global_key_util.dart';

extension StateEx on State {
  AppLocalizations get locale =>
      AppLocalizations.of(GlobalKeyUtil.navigatorKey.currentContext ?? context);
}
