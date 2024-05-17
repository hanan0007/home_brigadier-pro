import 'package:flutter/material.dart';

import '../color_scheme.dart';

DividerThemeData get dividerTheme => DividerThemeData(
      color: appSchemeLight.outline, // Use the outline color for dividers
      space: 1.0, // The amount of space occupied by a Divider
      thickness: 1.0, // The thickness of the line drawn within a divider
      indent:
          1.0, // The amount of empty space to the leading edge of a divider.
      endIndent:
          1.0, // The amount of empty space to the trailing edge of a divider.
    );

DividerThemeData get darkDividerTheme => DividerThemeData(
      color: appSchemeDark.outline, // Use the outline color for dividers
      space: 1.0, // The amount of space occupied by a Divider
      thickness: 1.0, // The thickness of the line drawn within a divider
      indent:
          10.0, // The amount of empty space to the leading edge of a divider.
      endIndent:
          10.0, // The amount of empty space to the trailing edge of a divider.
    );
