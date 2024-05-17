import 'package:flutter/material.dart';

import '../color_scheme.dart';

ButtonThemeData get buttonTheme => ButtonThemeData(
      buttonColor: appSchemeLight.primary, // Use the primary color for buttons
      disabledColor: appSchemeLight.onSurface.withOpacity(
          0.38), // Use the onSurface color with opacity for disabled buttons
      highlightColor: appSchemeLight
          .primaryContainer, // Use the primaryContainer color for the highlighted state
      splashColor: appSchemeLight
          .secondary, // Use the secondary color for the splash effect
      colorScheme: appSchemeLight, // Apply the entire color scheme for buttons
      shape: RoundedRectangleBorder(
// Example shape, adjust as needed
        borderRadius: BorderRadius.circular(4.0),
      ),
// You can add other properties as needed
    );

ButtonThemeData get darkButtonTheme => ButtonThemeData(
      buttonColor: appSchemeDark.primary, // Use the primary color for buttons
      disabledColor: appSchemeDark.onSurface.withOpacity(
          0.38), // Use the onSurface color with opacity for disabled buttons
      highlightColor: appSchemeDark
          .primaryContainer, // Use the primaryContainer color for the highlighted state
      splashColor: appSchemeDark
          .secondary, // Use the secondary color for the splash effect
      colorScheme: appSchemeDark, // Apply the entire color scheme for buttons
      shape: RoundedRectangleBorder(
// Example shape, adjust as needed
        borderRadius: BorderRadius.circular(4.0),
      ),
// You can add other properties as needed
    );
