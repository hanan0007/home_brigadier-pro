import 'package:flutter/material.dart';

import '../color_scheme.dart';

AppBarTheme get appBarTheme => AppBarTheme(
    // surfaceTintColor: appSchemeLight.background,
    color: appSchemeLight.primary,
    shadowColor: appSchemeLight.shadow.withOpacity(0.7),
    iconTheme: IconThemeData(
      color: appSchemeLight.onPrimary, // Use the onPrimary color for icons
    ),
    actionsIconTheme: IconThemeData(
      color:
          appSchemeLight.onPrimary, // Use the onPrimary color for action icons
    ),
    titleTextStyle: TextStyle(
      color: appSchemeLight.onPrimary, // Use the onPrimary color for title text
      fontSize: 20.0, // Example size, adjust as needed
    ),
    toolbarTextStyle: TextStyle(
      color:
          appSchemeLight.onSurface, // Use the onSurface color for toolbar text
      fontSize: 18.0, // Example size, adjust as needed
    ));

AppBarTheme get darkAppBarTheme => AppBarTheme(
    color: appSchemeDark.primary, // Use the primary color from appSchemeDark
    iconTheme: IconThemeData(
      color: appSchemeDark.onPrimary, // Use the onPrimary color for icons
    ),
    actionsIconTheme: IconThemeData(
      color:
          appSchemeDark.onPrimary, // Use the onPrimary color for action icons
    ),
    titleTextStyle: TextStyle(
      color: appSchemeDark.onPrimary, // Use the onPrimary color for title text
      fontSize: 20.0, // Example size, adjust as needed
    ),
    toolbarTextStyle: TextStyle(
      color:
          appSchemeDark.onSurface, // Use the onSurface color for toolbar text
      fontSize: 18.0, // Example size, adjust as needed
    ));
