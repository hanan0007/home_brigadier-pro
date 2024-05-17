import 'package:flutter/material.dart';

import '../color_scheme.dart';

IconButtonThemeData get iconButtonTheme => IconButtonThemeData(
      style: ButtonStyle(
        splashFactory: InkRipple.splashFactory,
        // backgroundColor:
        //     MaterialStateProperty.all(appSchemeLight.secondaryContainer),
        foregroundColor:
            MaterialStateProperty.all(appSchemeLight.onSecondaryContainer),
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return appSchemeLight.secondary.withOpacity(0.3);
            }
            if (states.contains(MaterialState.hovered)) {
              return appSchemeLight.secondary.withOpacity(0.08);
            }
            return null; // Defer to the widget's default.
          },
        ),
        // shadowColor: MaterialStateProperty.all(appSchemeLight.shadow),
        elevation: MaterialStateProperty.all(2),
        padding: MaterialStateProperty.all(const EdgeInsets.all(8)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
// Define other properties if needed
      ),
    );

IconButtonThemeData get darkIconButtonTheme => IconButtonThemeData(
      style: ButtonStyle(
        splashFactory: InkRipple.splashFactory,
        backgroundColor:
            MaterialStateProperty.all(appSchemeDark.secondaryContainer),
        foregroundColor:
            MaterialStateProperty.all(appSchemeDark.onSecondaryContainer),
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return appSchemeDark.secondary.withOpacity(0.3);
            }
            if (states.contains(MaterialState.hovered)) {
              return appSchemeDark.secondary.withOpacity(0.08);
            }
            return null; // Defer to the widget's default.
          },
        ),
        shadowColor: MaterialStateProperty.all(appSchemeDark.shadow),
        elevation: MaterialStateProperty.all(2),
        padding: MaterialStateProperty.all(const EdgeInsets.all(8)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
// Define other properties if needed
      ),
    );
