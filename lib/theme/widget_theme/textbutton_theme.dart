import 'package:flutter/material.dart';

import '../color_scheme.dart';

TextButtonThemeData get textButtonTheme => TextButtonThemeData(
      style: ButtonStyle(
        splashFactory: InkRipple.splashFactory,
        backgroundColor: MaterialStateProperty.all(Colors
            .transparent), // Typically, TextButtons have a transparent background
        foregroundColor:
            MaterialStateProperty.all(appSchemeLight.primary), // Text color
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return appSchemeLight.primary.withOpacity(0.2);
            }
            if (states.contains(MaterialState.hovered)) {
              return appSchemeLight.primary.withOpacity(0.08);
            }
            return null; // Defer to the widget's default.
          },
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: 16, // Example size for Body Large
            fontWeight: FontWeight.w500,
          ),
        ),
        padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0)),
      ),
    );

TextButtonThemeData get darkTextButtonTheme => TextButtonThemeData(
      style: ButtonStyle(
        splashFactory: InkRipple.splashFactory,
        backgroundColor: MaterialStateProperty.all(Colors
            .transparent), // Typically, TextButtons have a transparent background
        foregroundColor:
            MaterialStateProperty.all(appSchemeDark.primary), // Text color
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return appSchemeDark.primary.withOpacity(0.2);
            }
            if (states.contains(MaterialState.hovered)) {
              return appSchemeDark.primary.withOpacity(0.08);
            }
            return null; // Defer to the widget's default.
          },
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: 16, // Example size for Body Large
            fontWeight: FontWeight.w500,
          ),
        ),
        padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0)),
      ),
    );
