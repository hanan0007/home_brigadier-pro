import 'package:flutter/material.dart';

import '../color_scheme.dart';

RadioThemeData get radioThemeData => RadioThemeData(
      fillColor: MaterialStateProperty.all(appSchemeLight.primary),
      overlayColor:
          MaterialStateProperty.all(appSchemeLight.onPrimary.withOpacity(0.2)),
      splashRadius: 24, // Default splash radius
    );

RadioThemeData get darkRadioThemeData => RadioThemeData(
      fillColor: MaterialStateProperty.all(appSchemeDark.primary),
      overlayColor:
          MaterialStateProperty.all(appSchemeDark.onPrimary.withOpacity(0.2)),
      splashRadius: 24, // Default splash radius
    );
