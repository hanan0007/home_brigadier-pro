import 'package:flutter/material.dart';

import '../color_scheme.dart';

FilledButtonThemeData get filledButtonTheme => FilledButtonThemeData(
        style: ButtonStyle(
      splashFactory: InkRipple.splashFactory,
      backgroundColor: MaterialStateProperty.all(appSchemeLight.primary),
      foregroundColor: MaterialStateProperty.all(appSchemeLight.onPrimary),
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return appSchemeLight.primaryContainer.withOpacity(0.2);
          }
          if (states.contains(MaterialState.hovered)) {
            return appSchemeLight.primaryContainer.withOpacity(0.08);
          }
          if (states.contains(MaterialState.focused)) {
            return appSchemeLight.primaryContainer.withOpacity(0.2);
          }
          return null; // Defer to the widget's default.
        },
      ),
      elevation: MaterialStateProperty.resolveWith<double>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return 6.0;
          }
          return 2.0; // Default elevation.
        },
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
        const TextStyle(
          fontSize: 16, // Example size for Body Large
          fontWeight: FontWeight.w500,
        ),
      ),
    ));

FilledButtonThemeData get darkFilledButtonTheme => FilledButtonThemeData(
        style: ButtonStyle(
      splashFactory: InkRipple.splashFactory,
      backgroundColor: MaterialStateProperty.all(appSchemeDark.primary),
      foregroundColor: MaterialStateProperty.all(appSchemeDark.onPrimary),
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return appSchemeDark.primaryContainer.withOpacity(0.2);
          }
          if (states.contains(MaterialState.hovered)) {
            return appSchemeDark.primaryContainer.withOpacity(0.08);
          }
          if (states.contains(MaterialState.focused)) {
            return appSchemeDark.primaryContainer.withOpacity(0.2);
          }
          return null; // Defer to the widget's default.
        },
      ),
      elevation: MaterialStateProperty.resolveWith<double>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return 6.0;
          }
          return 2.0; // Default elevation.
        },
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
        const TextStyle(
          fontSize: 16, // Example size for Body Large
          fontWeight: FontWeight.w500,
        ),
      ),
    ));
