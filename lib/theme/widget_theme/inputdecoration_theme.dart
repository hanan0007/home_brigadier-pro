import 'package:flutter/material.dart';

import '../color_scheme.dart';

InputDecorationTheme get inputDecorationTheme => InputDecorationTheme(
// Define the border styles
    border: OutlineInputBorder(
      borderSide: BorderSide(color: appSchemeLight.outline),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: appSchemeLight.outlineVariant),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: appSchemeLight.primary),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: appSchemeLight.error),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: appSchemeLight.error),
    ),

// Define the label styles
    labelStyle: TextStyle(
      color: appSchemeLight.onSurface,
      fontSize: 16, // Example size for Body Large
    ),
    floatingLabelStyle: TextStyle(
      color: appSchemeLight.primary,
      fontSize: 18, // Example size for Title Large
    ),

// Define the hint style
    hintStyle: TextStyle(
      color: appSchemeLight.onSurfaceVariant,
      fontSize: 14, // Example size for Body Small
    ),

// Define the error style
    errorStyle: TextStyle(
      color: appSchemeLight.error,
      fontSize: 12, // Example size for Caption
    ),

// Define the prefix and suffix styles
    prefixStyle: TextStyle(color: appSchemeLight.onSurface),
    suffixStyle: TextStyle(color: appSchemeLight.onSurface),

// Define the content padding
    contentPadding:
        const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),

// Define the filled color
    filled: true,
    fillColor: appSchemeLight.surfaceVariant,

// Other properties
    isDense: true,
    helperStyle: TextStyle(color: appSchemeLight.onSurfaceVariant),
    counterStyle: TextStyle(color: appSchemeLight.onSurfaceVariant));

InputDecorationTheme get darkInputDecorationTheme => InputDecorationTheme(
// Define the border styles
    border: OutlineInputBorder(
      borderSide: BorderSide(color: appSchemeDark.outline),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: appSchemeDark.outlineVariant),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: appSchemeDark.primary),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: appSchemeDark.error),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: appSchemeDark.error),
    ),

// Define the label styles
    labelStyle: TextStyle(
      color: appSchemeDark.onSurface,
      fontSize: 16, // Example size for Body Large
    ),
    floatingLabelStyle: TextStyle(
      color: appSchemeDark.primary,
      fontSize: 18, // Example size for Title Large
    ),

// Define the hint style
    hintStyle: TextStyle(
      color: appSchemeDark.onSurfaceVariant,
      fontSize: 14, // Example size for Body Small
    ),

// Define the error style
    errorStyle: TextStyle(
      color: appSchemeDark.error,
      fontSize: 12, // Example size for Caption
    ),

// Define the prefix and suffix styles
    prefixStyle: TextStyle(color: appSchemeDark.onSurface),
    suffixStyle: TextStyle(color: appSchemeDark.onSurface),

// Define the content padding
    contentPadding:
        const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),

// Define the filled color
    filled: true,
    fillColor: appSchemeDark.surfaceVariant,

// Other properties
    isDense: true,
    helperStyle: TextStyle(color: appSchemeDark.onSurfaceVariant),
    counterStyle: TextStyle(color: appSchemeDark.onSurfaceVariant));
