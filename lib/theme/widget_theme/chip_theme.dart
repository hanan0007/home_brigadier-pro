import 'package:flutter/material.dart';

import '../color_scheme.dart';

ChipThemeData get chipThemeData => ChipThemeData(
      backgroundColor: appSchemeLight
          .primaryContainer, // Use the primaryContainer color for chip backgrounds
      deleteIconColor: appSchemeLight.error, // Color for delete icons in chips
      disabledColor: appSchemeLight.onSurface
          .withOpacity(0.38), // Color for disabled chips
      selectedColor: appSchemeLight.primary, // Color when the chip is selected
      secondarySelectedColor: appSchemeLight
          .secondary, // Color when the chip is selected, for secondary style
      labelStyle: TextStyle(
          color:
              appSchemeLight.onPrimaryContainer), // Text style for chip labels
      secondaryLabelStyle: TextStyle(
          color: appSchemeLight
              .onSecondary), // Text style for secondary chip labels
      brightness: Brightness
          .light, // Theme brightness, use Brightness.dark for dark mode
      padding: const EdgeInsets.all(4.0), // Padding inside the chip
      shape: RoundedRectangleBorder(
// Shape of the chip
        borderRadius: BorderRadius.circular(8.0),
      ),
// You can add other properties as needed
    );

ChipThemeData get darkChipThemeData => ChipThemeData(
      backgroundColor: appSchemeDark
          .primaryContainer, // Use the primaryContainer color for chip backgrounds
      deleteIconColor: appSchemeDark.error, // Color for delete icons in chips
      disabledColor:
          appSchemeDark.onSurface.withOpacity(0.38), // Color for disabled chips
      selectedColor: appSchemeDark.primary, // Color when the chip is selected
      secondarySelectedColor: appSchemeDark
          .secondary, // Color when the chip is selected, for secondary style
      labelStyle: TextStyle(
          color:
              appSchemeDark.onPrimaryContainer), // Text style for chip labels
      secondaryLabelStyle: TextStyle(
          color: appSchemeDark
              .onSecondary), // Text style for secondary chip labels
      brightness: Brightness
          .light, // Theme brightness, use Brightness.dark for dark mode
      padding: const EdgeInsets.all(4.0), // Padding inside the chip
      shape: RoundedRectangleBorder(
// Shape of the chip
        borderRadius: BorderRadius.circular(8.0),
      ),
// You can add other properties as needed
    );
