import 'package:flutter/material.dart';

import '../color_scheme.dart';

ExpansionTileThemeData get expansionTileTheme => ExpansionTileThemeData(
      backgroundColor: appSchemeLight.surface,
      iconColor: appSchemeLight.secondary,
      collapsedIconColor: appSchemeLight.onSurface,
      textColor: appSchemeLight.onSurface,
      collapsedTextColor: appSchemeLight.onSurfaceVariant,
      tilePadding: const EdgeInsets.symmetric(horizontal: 16.0),
      expandedAlignment: Alignment.centerLeft,
      childrenPadding: const EdgeInsets.symmetric(vertical: 8.0),
    );

ExpansionTileThemeData get darkExpansionTileTheme => ExpansionTileThemeData(
      backgroundColor: appSchemeDark.surface,
      iconColor: appSchemeDark.secondary,
      collapsedIconColor: appSchemeDark.onSurface,
      textColor: appSchemeDark.onSurface,
      collapsedTextColor: appSchemeDark.onSurfaceVariant,
      tilePadding: const EdgeInsets.symmetric(horizontal: 16.0),
      expandedAlignment: Alignment.centerLeft,
      childrenPadding: const EdgeInsets.symmetric(vertical: 8.0),
    );
