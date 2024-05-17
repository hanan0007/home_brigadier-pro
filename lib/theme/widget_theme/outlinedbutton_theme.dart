import 'package:flutter/material.dart';

import '../color_scheme.dart';

OutlinedButtonThemeData get outlinedButtonTheme => OutlinedButtonThemeData(
      style: ButtonStyle(
        splashFactory: InkRipple.splashFactory,
        backgroundColor: MaterialStateProperty.all(appSchemeLight.surface),
        foregroundColor: MaterialStateProperty.all(appSchemeLight.onSurface),
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
        side: MaterialStateProperty.all(BorderSide(
          color: appSchemeLight.primary, // Border color
          width: 1.0, // Border width
        )),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
        textStyle: MaterialStateProperty.all(
          TextStyle(
            color: appSchemeLight.onSurface, // Text color
            fontSize: 16, // Font size
          ),
        ),
        padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0)),
      ),
    );

OutlinedButtonThemeData get darkOutlinedButtonTheme => OutlinedButtonThemeData(
      style: ButtonStyle(
        splashFactory: InkRipple.splashFactory,
        backgroundColor: MaterialStateProperty.all(appSchemeDark.surface),
        foregroundColor: MaterialStateProperty.all(appSchemeDark.onSurface),
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
        side: MaterialStateProperty.all(BorderSide(
          color: appSchemeDark.primary, // Border color
          width: 1.0, // Border width
        )),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
        textStyle: MaterialStateProperty.all(
          TextStyle(
            color: appSchemeDark.onSurface, // Text color
            fontSize: 16, // Font size
          ),
        ),
        padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0)),
      ),
    );
