import 'package:flutter/material.dart';

import '../color_scheme.dart';

DrawerThemeData get drawerTheme => DrawerThemeData(
      backgroundColor:
          appSchemeLight.surface, // Use the surface color for Drawer background
      scrimColor:
          appSchemeLight.scrim, // Use the scrim color when the Drawer is open
      elevation: 16.0, // Example elevation, adjust as needed
      shape: const RoundedRectangleBorder(
// Example shape, adjust as needed
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      ),
// You can add other properties as needed
    );

DrawerThemeData get darkDrawerTheme => DrawerThemeData(
      backgroundColor:
          appSchemeDark.surface, // Use the surface color for Drawer background
      scrimColor:
          appSchemeDark.scrim, // Use the scrim color when the Drawer is open
      elevation: 16.0, // Example elevation, adjust as needed
      shape: const RoundedRectangleBorder(
// Example shape, adjust as needed
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      ),
// You can add other properties as needed
    );
