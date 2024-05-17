import 'package:flutter/material.dart';

import '../color_scheme.dart';

DataTableThemeData get dataTableTheme => DataTableThemeData(
      decoration: BoxDecoration(
        color: appSchemeLight
            .surfaceVariant, // Use the surfaceVariant color for DataTable background
      ),
      dataTextStyle: TextStyle(
        color: appSchemeLight
            .onSurfaceVariant, // Use the onSurfaceVariant color for data text
        fontSize: 14.0, // Example size, adjust as needed
      ),
      headingTextStyle: TextStyle(
        color: appSchemeLight
            .onSurface, // Use the onSurface color for heading text
        fontSize: 16.0, // Example size, adjust as needed
        fontWeight: FontWeight.bold, // Example weight, adjust as needed
      ),
      dividerThickness: 1.0, // Example thickness, adjust as needed
// You can add other properties as needed
    );

DataTableThemeData get darkDataTableTheme => DataTableThemeData(
      decoration: BoxDecoration(
        color: appSchemeDark
            .surfaceVariant, // Use the surfaceVariant color for DataTable background
      ),
      dataTextStyle: TextStyle(
        color: appSchemeDark
            .onSurfaceVariant, // Use the onSurfaceVariant color for data text
        fontSize: 14.0, // Example size, adjust as needed
      ),
      headingTextStyle: TextStyle(
        color:
            appSchemeDark.onSurface, // Use the onSurface color for heading text
        fontSize: 16.0, // Example size, adjust as needed
        fontWeight: FontWeight.bold, // Example weight, adjust as needed
      ),
      dividerThickness: 1.0, // Example thickness, adjust as needed
// You can add other properties as needed
    );
