import 'package:flutter/material.dart';

import '../color_scheme.dart';

BottomNavigationBarThemeData get bottomNavigationBarTheme =>
    BottomNavigationBarThemeData(
        backgroundColor:
            appSchemeLight.surface, // Use the surface color for background
        selectedItemColor:
            appSchemeLight.primary, // Use the primary color for selected item
        unselectedItemColor: appSchemeLight.onSurface.withOpacity(
            0.60), // Use the onSurface color with opacity for unselected items
        selectedIconTheme: IconThemeData(
          color: appSchemeLight
              .primary, // Use the primary color for selected icons
        ),
        unselectedIconTheme: IconThemeData(
          color: appSchemeLight.onSurface.withOpacity(
              0.60), // Use the onSurface color with opacity for unselected icons
        ),
        selectedLabelStyle: TextStyle(
          color: appSchemeLight
              .primary, // Use the primary color for selected labels
        ),
        unselectedLabelStyle: TextStyle(
          color: appSchemeLight.onSurface.withOpacity(
              0.60), // Use the onSurface color with opacity for unselected labels
        ));

BottomNavigationBarThemeData get darkBottomNavigationBarTheme =>
    BottomNavigationBarThemeData(
        backgroundColor:
            appSchemeDark.surface, // Use the surface color for background
        selectedItemColor:
            appSchemeDark.primary, // Use the primary color for selected item
        unselectedItemColor: appSchemeDark.onSurface.withOpacity(
            0.60), // Use the onSurface color with opacity for unselected items
        selectedIconTheme: IconThemeData(
          color:
              appSchemeDark.primary, // Use the primary color for selected icons
        ),
        unselectedIconTheme: IconThemeData(
          color: appSchemeDark.onSurface.withOpacity(
              0.60), // Use the onSurface color with opacity for unselected icons
        ),
        selectedLabelStyle: TextStyle(
          color: appSchemeDark
              .primary, // Use the primary color for selected labels
        ),
        unselectedLabelStyle: TextStyle(
          color: appSchemeDark.onSurface.withOpacity(
              0.60), // Use the onSurface color with opacity for unselected labels
        ));
