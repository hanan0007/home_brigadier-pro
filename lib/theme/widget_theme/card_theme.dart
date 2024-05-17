import 'package:flutter/material.dart';

import '../color_scheme.dart';

CardTheme get cardTheme => CardTheme(
      color:
          appSchemeLight.surface, // Use the surface color for card backgrounds
      shadowColor:
          appSchemeLight.shadow, // Use the shadow color for card shadows
      elevation: 1.0, // Example elevation, adjust as needed
      shape: RoundedRectangleBorder(
// Example shape, adjust as needed
        borderRadius: BorderRadius.circular(4.0),
      ),
// You can add other properties as needed
    );

CardTheme get darkCardTheme => CardTheme(
      color:
          appSchemeDark.surface, // Use the surface color for card backgrounds
      shadowColor:
          appSchemeDark.shadow, // Use the shadow color for card shadows
      elevation: 1.0, // Example elevation, adjust as needed
      shape: RoundedRectangleBorder(
// Example shape, adjust as needed
        borderRadius: BorderRadius.circular(4.0),
      ),
// You can add other properties as needed
    );
