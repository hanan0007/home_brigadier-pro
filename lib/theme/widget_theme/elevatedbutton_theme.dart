import 'package:flutter/material.dart';

import '../color_scheme.dart';

ElevatedButtonThemeData get elevatedButtonTheme => ElevatedButtonThemeData(
      style: ButtonStyle(
        splashFactory: InkRipple.splashFactory,
        backgroundColor: MaterialStateProperty.all(appSchemeLight.primary),
        foregroundColor: MaterialStateProperty.all(appSchemeLight.onPrimary),
        overlayColor: MaterialStateProperty.all(
            appSchemeLight.primaryContainer.withOpacity(0.2)),
        shadowColor: MaterialStateProperty.all(appSchemeLight.shadow),
        elevation: MaterialStateProperty.all(2),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: 16, // Example size for Body Large
            fontWeight: FontWeight.w500,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );

ElevatedButtonThemeData get darkElevatedButtonTheme => ElevatedButtonThemeData(
      style: ButtonStyle(
        splashFactory: InkRipple.splashFactory,
        backgroundColor: MaterialStateProperty.all(appSchemeDark.primary),
        foregroundColor: MaterialStateProperty.all(appSchemeDark.onPrimary),
        overlayColor: MaterialStateProperty.all(
            appSchemeDark.primaryContainer.withOpacity(0.2)),
        shadowColor: MaterialStateProperty.all(appSchemeDark.shadow),
        elevation: MaterialStateProperty.all(2),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: 16, // Example size for Body Large
            fontWeight: FontWeight.w500,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
