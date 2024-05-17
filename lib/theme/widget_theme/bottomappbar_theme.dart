import 'package:flutter/material.dart';

import '../color_scheme.dart';

BottomAppBarTheme get bottomAppBarTheme => BottomAppBarTheme(
      color: appSchemeLight
          .surface, // Use the surface color for BottomAppBar background
      elevation: 4.0, // Example elevation, adjust as needed
    );

BottomAppBarTheme get darkBottomAppBarTheme => BottomAppBarTheme(
      color: appSchemeDark
          .surface, // Use the surface color for BottomAppBar background
      elevation: 4.0, // Example elevation, adjust as needed
    );
