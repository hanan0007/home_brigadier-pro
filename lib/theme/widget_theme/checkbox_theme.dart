import 'package:flutter/material.dart';

import '../color_scheme.dart';

CheckboxThemeData get checkboxTheme => CheckboxThemeData(
      fillColor:
          MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return appSchemeLight
              .primary; // Use the primary color when the checkbox is selected
        }
        return appSchemeLight.onSurface.withOpacity(
            0.6); // Use the onSurface color with opacity when the checkbox is not selected
      }),
      checkColor: MaterialStateProperty.all<Color>(appSchemeLight
          .onPrimary), // Use the onPrimary color for the check icon
      overlayColor: MaterialStateProperty.all<Color>(appSchemeLight
          .secondaryContainer), // Use the secondaryContainer color for the overlay
// You can add other properties as needed
    );

CheckboxThemeData get darkCheckboxTheme => CheckboxThemeData(
      fillColor:
          MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return appSchemeLight
              .primary; // Use the primary color when the checkbox is selected
        }
        return appSchemeLight.onSurface.withOpacity(
            0.6); // Use the onSurface color with opacity when the checkbox is not selected
      }),
      checkColor: MaterialStateProperty.all<Color>(appSchemeLight
          .onPrimary), // Use the onPrimary color for the check icon
      overlayColor: MaterialStateProperty.all<Color>(appSchemeLight
          .secondaryContainer), // Use the secondaryContainer color for the overlay
// You can add other properties as needed
    );
