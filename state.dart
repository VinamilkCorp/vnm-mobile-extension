import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:vinamilk_b2b/vnm/core/global/localization.dart';

extension StateEx on State {
  AppLocalizations get locale => Localization().locale;
}
