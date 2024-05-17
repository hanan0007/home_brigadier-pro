import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_brigadier_admin_panel/theme/widget_theme/appbar_theme.dart';
import 'package:home_brigadier_admin_panel/theme/widget_theme/banner_theme.dart';
import 'package:home_brigadier_admin_panel/theme/widget_theme/bottomappbar_theme.dart';
import 'package:home_brigadier_admin_panel/theme/widget_theme/bottomnavigationbar_theme.dart';
import 'package:home_brigadier_admin_panel/theme/widget_theme/bottomsheet_theme.dart';
import 'package:home_brigadier_admin_panel/theme/widget_theme/button_theme.dart';
import 'package:home_brigadier_admin_panel/theme/widget_theme/buttonbar_theme.dart';
import 'package:home_brigadier_admin_panel/theme/widget_theme/card_theme.dart';
import 'package:home_brigadier_admin_panel/theme/widget_theme/checkbox_theme.dart';
import 'package:home_brigadier_admin_panel/theme/widget_theme/chip_theme.dart';
import 'package:home_brigadier_admin_panel/theme/widget_theme/datatable_theme.dart';
import 'package:home_brigadier_admin_panel/theme/widget_theme/datepicker_theme.dart';
import 'package:home_brigadier_admin_panel/theme/widget_theme/dialog_theme.dart';
import 'package:home_brigadier_admin_panel/theme/widget_theme/divider_theme.dart';
import 'package:home_brigadier_admin_panel/theme/widget_theme/drawer_theme.dart';
import 'package:home_brigadier_admin_panel/theme/widget_theme/elevatedbutton_theme.dart';
import 'package:home_brigadier_admin_panel/theme/widget_theme/expansiontile_theme.dart';
import 'package:home_brigadier_admin_panel/theme/widget_theme/filledbutton_theme.dart';
import 'package:home_brigadier_admin_panel/theme/widget_theme/icon_theme.dart';
import 'package:home_brigadier_admin_panel/theme/widget_theme/iconbutton_theme.dart';
import 'package:home_brigadier_admin_panel/theme/widget_theme/inputdecoration_theme.dart';
import 'package:home_brigadier_admin_panel/theme/widget_theme/outlinedbutton_theme.dart';
import 'package:home_brigadier_admin_panel/theme/widget_theme/radio_theme.dart';
import 'package:home_brigadier_admin_panel/theme/widget_theme/textbutton_theme.dart';

import '../consts/color_const/primary_material.dart';
import 'color_scheme.dart';

class AppTheme {
  AppTheme._();
  static final AppTheme instance = AppTheme._();

  factory AppTheme() {
    return instance;
  }

  ThemeData get light {
    return ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorScheme: appSchemeLight,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: appBarTheme,
        iconTheme: iconThemeData,
        textTheme: TextTheme(
          displayLarge: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 96.0,
              fontWeight: FontWeight.w300),
          displayMedium: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 60.0,
              fontWeight: FontWeight.w300),
          displaySmall: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 48.0,
              fontWeight: FontWeight.w400),
          headlineMedium: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 34.0,
              fontWeight: FontWeight.w400),
          headlineSmall: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 24.0,
              fontWeight: FontWeight.w400),
          titleLarge: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 20.0,
              fontWeight: FontWeight.w500),
          titleMedium: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 16.0,
              fontWeight: FontWeight.w400),
          titleSmall: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 14.0,
              fontWeight: FontWeight.w500),
          bodyLarge: TextStyle(
              color: appSchemeLight.onBackground,
              fontSize: 16.0,
              fontWeight: FontWeight.w400),
          bodyMedium: TextStyle(
              color: appSchemeLight.onBackground,
              fontSize: 14.0,
              fontWeight: FontWeight.w400),
          labelLarge: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 14.0,
              fontWeight: FontWeight.w500),
          bodySmall: TextStyle(
              color: appSchemeLight.onBackground,
              fontSize: 12.0,
              fontWeight: FontWeight.w400),
          labelSmall: TextStyle(
              color: appSchemeLight.onBackground,
              fontSize: 10.0,
              fontWeight: FontWeight.w400),
        ),
        primaryTextTheme: TextTheme(
          displayLarge: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 96.0,
              fontWeight: FontWeight.w300),
          displayMedium: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 60.0,
              fontWeight: FontWeight.w300),
          displaySmall: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 48.0,
              fontWeight: FontWeight.w400),
          headlineMedium: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 34.0,
              fontWeight: FontWeight.w400),
          headlineSmall: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 24.0,
              fontWeight: FontWeight.w400),
          titleLarge: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 20.0,
              fontWeight: FontWeight.w500),
          titleMedium: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 16.0,
              fontWeight: FontWeight.w400),
          titleSmall: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 14.0,
              fontWeight: FontWeight.w500),
          bodyLarge: TextStyle(
              color: appSchemeLight.onBackground,
              fontSize: 16.0,
              fontWeight: FontWeight.w400),
          bodyMedium: TextStyle(
              color: appSchemeLight.onBackground,
              fontSize: 14.0,
              fontWeight: FontWeight.w400),
          labelLarge: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 14.0,
              fontWeight: FontWeight.w500),
          bodySmall: TextStyle(
              color: appSchemeLight.onBackground,
              fontSize: 12.0,
              fontWeight: FontWeight.w400),
          labelSmall: TextStyle(
              color: appSchemeLight.onBackground,
              fontSize: 10.0,
              fontWeight: FontWeight.w400),
        ),
        bottomNavigationBarTheme: bottomNavigationBarTheme,
        bannerTheme: bannerTheme,
        bottomAppBarTheme: bottomAppBarTheme,
        bottomSheetTheme: bottomSheetTheme,
        buttonBarTheme: buttonBarTheme,
        buttonTheme: buttonTheme,
        shadowColor: appSchemeLight.shadow,
        canvasColor: appSchemeLight.background,
        cardTheme: cardTheme,
        checkboxTheme: checkboxTheme,
        chipTheme: chipThemeData,
        dataTableTheme: dataTableTheme,
        datePickerTheme: datePickerTheme,
        dialogTheme: dialogTheme,
        dividerTheme: dividerTheme,
        drawerTheme: drawerTheme,
        elevatedButtonTheme: elevatedButtonTheme,
        expansionTileTheme: expansionTileTheme,
        inputDecorationTheme: inputDecorationTheme,
        filledButtonTheme: filledButtonTheme,
        iconButtonTheme: iconButtonTheme,
        outlinedButtonTheme: outlinedButtonTheme,
        radioTheme: radioThemeData,
        textButtonTheme: textButtonTheme,
        switchTheme: SwitchThemeData(
          thumbColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return appSchemeLight
                    .secondary; // Thumb color when the switch is on
              }
              return appSchemeLight.onSurface
                  .withOpacity(0.5); // Thumb color when the switch is off
            },
          ),
          trackColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return appSchemeLight.secondary
                    .withOpacity(0.5); // Track color when the switch is on
              }
              return appSchemeLight.onSurface
                  .withOpacity(0.1); // Track color when the switch is off
            },
          ),
          splashRadius: 20, // Splash radius for the ink response
        ),
        toggleButtonsTheme: ToggleButtonsThemeData(
          fillColor: appSchemeLight.primary,
          selectedColor: appSchemeLight.onPrimary,
          hoverColor: appSchemeLight.primaryContainer.withOpacity(0.08),
          focusColor: appSchemeLight.primaryContainer.withOpacity(0.12),
          splashColor: appSchemeLight.primaryContainer.withOpacity(0.12),
          textStyle: TextStyle(
            fontSize: 16, // Example size for Body Large
            fontWeight: FontWeight.w500,
            color: appSchemeLight.onSurface, // Default text color
          ),
          borderColor: appSchemeLight.outline,
          selectedBorderColor: appSchemeLight.primary,
          borderRadius: BorderRadius.circular(4.0),
          borderWidth: 2, // Border width
        ),
        tooltipTheme: TooltipThemeData(
          decoration: BoxDecoration(
            color: appSchemeLight
                .outlineVariant, // Background color of the tooltip
            borderRadius: BorderRadius.circular(4.0), // Rounded corners
          ),
          textStyle: TextStyle(
            color: appSchemeLight
                .onPrimaryContainer, // Text color inside the tooltip
            fontSize: 14, // Example size for Body Small
          ),
          padding: const EdgeInsets.all(8.0), // Inner padding of the tooltip
          margin: const EdgeInsets.symmetric(
              horizontal: 8.0), // Margin around the tooltip
          showDuration:
              const Duration(seconds: 3), // Duration the tooltip will be shown
          waitDuration: const Duration(
              seconds: 1), // Duration to wait before showing the tooltip
          height: 32, // Height of the tooltip
          preferBelow:
              false, // Prefer showing the tooltip above the widget if there's space
          verticalOffset: 16, // Vertical offset from the widget
        ),
        timePickerTheme: TimePickerThemeData(
          backgroundColor: appSchemeLight.background,
          dialHandColor: appSchemeLight.primary,
          dialBackgroundColor: appSchemeLight.surfaceVariant,
          dayPeriodColor: appSchemeLight.secondaryContainer,
          dayPeriodTextColor: appSchemeLight.onSecondaryContainer,
          hourMinuteTextColor: appSchemeLight.onPrimaryContainer,
          hourMinuteColor: appSchemeLight.primaryContainer,
          entryModeIconColor: appSchemeLight.tertiary,
          helpTextStyle: TextStyle(
            color: appSchemeLight.onBackground,
            fontSize: 14, // Example size for Body Small
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          hourMinuteShape: RoundedRectangleBorder(
            side: BorderSide(
              color: appSchemeLight.primary,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          dayPeriodShape: RoundedRectangleBorder(
            side: BorderSide(
              color: appSchemeLight.secondary,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: appSchemeLight.outline),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: appSchemeLight.primary),
            ),
            labelStyle: TextStyle(
              color: appSchemeLight.onSurface,
              fontSize: 16, // Example size for Body Large
            ),
          ),
          // Define other properties if needed
        ),
        tabBarTheme: TabBarTheme(
          // The color of the tab labels
          labelColor: appSchemeLight.onPrimary,
          // The color of the unselected tab labels
          unselectedLabelColor: appSchemeLight.onSurfaceVariant,
          // The padding added to each of the tab labels
          labelPadding: const EdgeInsets.symmetric(horizontal: 8.0),
          // The style of text to display for the tab labels
          labelStyle: const TextStyle(
            fontSize: 16, // Example size for Body Large
            fontWeight: FontWeight.w500,
          ),
          // The style of text to display for the unselected tab labels
          unselectedLabelStyle: const TextStyle(
            fontSize: 14, // Example size for Body Small
            fontWeight: FontWeight.w400,
          ),
          // The color of the tab indicator
          indicatorColor: appSchemeLight.primary,
          // The size/shape of the tab indicator
          indicatorSize: TabBarIndicatorSize.tab,
          // The padding added to the tab indicator

          // The decoration to paint behind the tab labels
          indicator: BoxDecoration(
            color: appSchemeLight.primaryContainer,
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
        snackBarTheme: SnackBarThemeData(
          backgroundColor:
              appSchemeLight.surfaceVariant, // Background color of the SnackBar
          actionTextColor: appSchemeLight.primary, // Color of the action text
          disabledActionTextColor: appSchemeLight.onSurface.withOpacity(
              0.38), // Color of the action text when it is disabled
          contentTextStyle: TextStyle(
            color: appSchemeLight.onSurface, // Text color inside the SnackBar
            fontSize: 16, // Example size for Body Large
          ),
          elevation: 6.0, // Elevation of the SnackBar
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0), // Shape of the SnackBar
          ),
          behavior: SnackBarBehavior.floating, // Behavior of the SnackBar
          width: 280.0, // Width of the SnackBar
        ),
        segmentedButtonTheme: SegmentedButtonThemeData(
          // Define the style for the buttons
          style: ButtonStyle(
            splashFactory: InkRipple.splashFactory,
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.selected)) {
                  return appSchemeLight
                      .primary; // Background color when the button is selected
                }
                return appSchemeLight
                    .primaryContainer; // Background color when the button is not selected
              },
            ),
            foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.selected)) {
                  return appSchemeLight
                      .onPrimary; // Text color when the button is selected
                }
                return appSchemeLight
                    .onPrimaryContainer; // Text color when the button is not selected
              },
            ),
            overlayColor: MaterialStateProperty.all(
                appSchemeLight.primary.withOpacity(0.2)),
            // Define other properties if needed
          ),
        ),
        listTileTheme: ListTileThemeData(
          tileColor: appSchemeLight.surface,
          selectedColor: appSchemeLight.primary,
          iconColor: appSchemeLight.secondary,
          textColor: appSchemeLight.onSurface,
          // Add other properties as needed
        ),
        menuButtonTheme: MenuButtonThemeData(
          style: ButtonStyle(
            splashFactory: InkRipple.splashFactory,
            backgroundColor:
                MaterialStateProperty.all<Color>(appSchemeLight.primary),
            foregroundColor:
                MaterialStateProperty.all<Color>(appSchemeLight.onPrimary),
            overlayColor: MaterialStateProperty.all<Color>(
                appSchemeLight.primaryContainer),
            // Add other properties as needed
          ),
        ),
        sliderTheme: SliderThemeData(
          activeTrackColor: appSchemeLight.primary,
          inactiveTrackColor: appSchemeLight.primaryContainer,
          thumbColor: appSchemeLight.secondary,
          overlayColor: appSchemeLight.secondaryContainer.withOpacity(0.2),
          valueIndicatorColor: appSchemeLight.tertiary,
          // Add other properties as needed
        ),
        menuTheme: MenuThemeData(
          style: MenuStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(appSchemeLight.surface),
            // surfaceTintColor: MaterialStateProperty.all<Color>(appSchemeLight.onSurface),
            // shadowColor: MaterialStateProperty.all<Color>(appSchemeLight.primaryContainer.withOpacity(0.1)),
            // Add other properties as needed
          ),
        ),
        menuBarTheme: MenuBarThemeData(
          style: MenuStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(appSchemeLight.surface),
            // surfaceTintColor: MaterialStateProperty.all<Color>(appSchemeLight.onSurface),
            // shadowColor: MaterialStateProperty.all<Color>(appSchemeLight.primaryContainer.withOpacity(0.1)),
            // Add other properties as needed
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: appSchemeLight.primary,
          foregroundColor: appSchemeLight.onPrimary,
          hoverColor: appSchemeLight.primaryContainer.withOpacity(0.1),
          focusColor: appSchemeLight.primaryContainer.withOpacity(0.2),
          splashColor: appSchemeLight.secondaryContainer.withOpacity(0.2),
          // Add other properties as needed
        ),
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: appSchemeLight.background,
          indicatorColor: appSchemeLight.secondary,
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(color: appSchemeLight.onBackground),
          ),
          iconTheme: MaterialStateProperty.all(
            IconThemeData(color: appSchemeLight.primary),
          ),
          // Add other properties as needed
        ),
        navigationRailTheme: NavigationRailThemeData(
          backgroundColor: appSchemeLight.surfaceVariant,
          selectedIconTheme: IconThemeData(
            color: appSchemeLight.primary,
          ),
          unselectedIconTheme: IconThemeData(
            color: appSchemeLight.onSurfaceVariant,
          ),
          selectedLabelTextStyle: TextStyle(
            color: appSchemeLight.onPrimaryContainer,
          ),
          unselectedLabelTextStyle: TextStyle(
            color: appSchemeLight.onSurfaceVariant,
          ),
          // Add other properties as needed
        ),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            // You can add custom transitions for different platforms
          },
        ),
        popupMenuTheme: PopupMenuThemeData(
          color: appSchemeLight.surface,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
          textStyle: TextStyle(color: appSchemeLight.onSurface),
          // Add other properties as needed
        ),
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all(appSchemeLight.primary),
          trackColor: MaterialStateProperty.all(appSchemeLight.background),
          trackBorderColor: MaterialStateProperty.all(appSchemeLight.outline),
          crossAxisMargin: 2.0,
          mainAxisMargin: 2.0,
          radius: const Radius.circular(8),
          thickness: MaterialStateProperty.all(8.0),
        ),
        searchBarTheme: SearchBarThemeData(
          backgroundColor:
              MaterialStateProperty.all<Color>(appSchemeLight.surface),
          elevation: MaterialStateProperty.all<double>(2.0),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
          ),
          // Add other properties as needed
        ),
        searchViewTheme: SearchViewThemeData(
          backgroundColor: appSchemeLight.surface,
          elevation: 2.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: appSchemeLight.secondary,
          linearTrackColor: appSchemeLight.background,
          circularTrackColor: appSchemeLight.surfaceVariant,
          // Add other properties as needed
        ),
        splashFactory: InkRipple.splashFactory,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: appSchemeLight.primary, // Color of the cursor
          selectionColor: appSchemeLight
              .primaryContainer, // Color of the selection rectangle
          selectionHandleColor:
              appSchemeLight.secondary, // Color of the drag handles
          // Add other properties as needed
        ),
        navigationDrawerTheme: NavigationDrawerThemeData(
          backgroundColor: appSchemeLight.surface,
          elevation: 2.0,
          // You can add other properties as needed
        ),
        focusColor: appSchemeLight.primary,
        typography: Typography.material2018(
          platform: TargetPlatform.android,
          black: Typography.blackMountainView.apply(
            bodyColor: appSchemeLight.onBackground,
            displayColor: appSchemeLight.onBackground,
          ),
          white: Typography.whiteMountainView.apply(
            bodyColor: appSchemeLight.onSurface,
            displayColor: appSchemeLight.onSurface,
          ),
          englishLike: Typography.englishLike2018.apply(
            bodyColor: appSchemeLight.primary,
            displayColor: appSchemeLight.primary,
          ),
          dense: Typography.dense2018.apply(
            bodyColor: appSchemeLight.secondary,
            displayColor: appSchemeLight.secondary,
          ),
          tall: Typography.tall2018.apply(
            bodyColor: appSchemeLight.tertiary,
            displayColor: appSchemeLight.tertiary,
          ),
        ),
        dropdownMenuTheme: DropdownMenuThemeData(
          textStyle: TextStyle(color: appSchemeLight.onSurface),
          // You can add other properties as needed
        ),
        primarySwatch: primaryMaterial,
        cardColor: appSchemeLight.surface,
        dialogBackgroundColor: appSchemeLight.surface,
        disabledColor: appSchemeLight.onSurface.withOpacity(0.38),
        dividerColor: appSchemeLight.outline,
        highlightColor: appSchemeLight.primaryContainer,
        hintColor: appSchemeLight.onSurfaceVariant,
        hoverColor: appSchemeLight.secondaryContainer.withOpacity(0.08),
        primaryColor: appSchemeLight.primary,
        primaryColorDark: appSchemeLight.primaryContainer,
        primaryColorLight: appSchemeLight.primaryContainer,
        secondaryHeaderColor: appSchemeLight.secondaryContainer,
        splashColor: appSchemeLight.secondaryContainer.withOpacity(0.12),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        primaryIconTheme: IconThemeData(color: appSchemeLight.onPrimary),
        indicatorColor: appSchemeLight.secondary,
        unselectedWidgetColor: appSchemeLight.onSurface.withOpacity(0.60),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        applyElevationOverlayColor: false,
        scaffoldBackgroundColor: appSchemeLight.background);
  }

  ThemeData get dark {
    return ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: appSchemeDark,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: darkAppBarTheme,
        iconTheme: darkIconThemeData,
        textTheme: TextTheme(
          displayLarge: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 96.0,
              fontWeight: FontWeight.w300),
          displayMedium: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 60.0,
              fontWeight: FontWeight.w300),
          displaySmall: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 48.0,
              fontWeight: FontWeight.w400),
          headlineMedium: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 34.0,
              fontWeight: FontWeight.w400),
          headlineSmall: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 24.0,
              fontWeight: FontWeight.w400),
          titleLarge: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 20.0,
              fontWeight: FontWeight.w500),
          titleMedium: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 16.0,
              fontWeight: FontWeight.w400),
          titleSmall: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 14.0,
              fontWeight: FontWeight.w500),
          bodyLarge: TextStyle(
              color: appSchemeLight.onBackground,
              fontSize: 16.0,
              fontWeight: FontWeight.w400),
          bodyMedium: TextStyle(
              color: appSchemeLight.onBackground,
              fontSize: 14.0,
              fontWeight: FontWeight.w400),
          labelLarge: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 14.0,
              fontWeight: FontWeight.w500),
          bodySmall: TextStyle(
              color: appSchemeLight.onBackground,
              fontSize: 12.0,
              fontWeight: FontWeight.w400),
          labelSmall: TextStyle(
              color: appSchemeLight.onBackground,
              fontSize: 10.0,
              fontWeight: FontWeight.w400),
        ),
        primaryTextTheme: TextTheme(
          displayLarge: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 96.0,
              fontWeight: FontWeight.w300),
          displayMedium: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 60.0,
              fontWeight: FontWeight.w300),
          displaySmall: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 48.0,
              fontWeight: FontWeight.w400),
          headlineMedium: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 34.0,
              fontWeight: FontWeight.w400),
          headlineSmall: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 24.0,
              fontWeight: FontWeight.w400),
          titleLarge: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 20.0,
              fontWeight: FontWeight.w500),
          titleMedium: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 16.0,
              fontWeight: FontWeight.w400),
          titleSmall: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 14.0,
              fontWeight: FontWeight.w500),
          bodyLarge: TextStyle(
              color: appSchemeLight.onBackground,
              fontSize: 16.0,
              fontWeight: FontWeight.w400),
          bodyMedium: TextStyle(
              color: appSchemeLight.onBackground,
              fontSize: 14.0,
              fontWeight: FontWeight.w400),
          labelLarge: TextStyle(
              color: appSchemeLight.onPrimary,
              fontSize: 14.0,
              fontWeight: FontWeight.w500),
          bodySmall: TextStyle(
              color: appSchemeLight.onBackground,
              fontSize: 12.0,
              fontWeight: FontWeight.w400),
          labelSmall: TextStyle(
              color: appSchemeLight.onBackground,
              fontSize: 10.0,
              fontWeight: FontWeight.w400),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor:
                appSchemeLight.surface, // Use the surface color for background
            selectedItemColor: appSchemeLight
                .primary, // Use the primary color for selected item
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
            )),
        bannerTheme: bannerTheme,
        bottomAppBarTheme: bottomAppBarTheme,
        bottomSheetTheme: bottomSheetTheme,
        buttonBarTheme: const ButtonBarThemeData(
          alignment: MainAxisAlignment
              .spaceEvenly, // Example alignment, adjust as needed
          buttonMinWidth: 90.0, // Example minimum width, adjust as needed
          buttonHeight: 36.0, // Example height, adjust as needed
          buttonPadding: EdgeInsets.symmetric(
              horizontal: 16.0), // Example padding, adjust as needed
          buttonAlignedDropdown:
              false, // Example dropdown alignment, adjust as needed
          layoutBehavior: ButtonBarLayoutBehavior
              .constrained, // Example layout behavior, adjust as needed
          // You can add other properties as needed
        ),
        buttonTheme: ButtonThemeData(
          buttonColor:
              appSchemeLight.primary, // Use the primary color for buttons
          disabledColor: appSchemeLight.onSurface.withOpacity(
              0.38), // Use the onSurface color with opacity for disabled buttons
          highlightColor: appSchemeLight
              .primaryContainer, // Use the primaryContainer color for the highlighted state
          splashColor: appSchemeLight
              .secondary, // Use the secondary color for the splash effect
          colorScheme:
              appSchemeLight, // Apply the entire color scheme for buttons
          shape: RoundedRectangleBorder(
            // Example shape, adjust as needed
            borderRadius: BorderRadius.circular(4.0),
          ),
          // You can add other properties as needed
        ),
        shadowColor: appSchemeLight.shadow,
        canvasColor: appSchemeLight.background,
        cardTheme: CardTheme(
          color: appSchemeLight
              .surface, // Use the surface color for card backgrounds
          shadowColor:
              appSchemeLight.shadow, // Use the shadow color for card shadows
          elevation: 1.0, // Example elevation, adjust as needed
          shape: RoundedRectangleBorder(
            // Example shape, adjust as needed
            borderRadius: BorderRadius.circular(4.0),
          ),
          // You can add other properties as needed
        ),
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
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
        ),
        chipTheme: ChipThemeData(
          backgroundColor: appSchemeLight
              .primaryContainer, // Use the primaryContainer color for chip backgrounds
          deleteIconColor:
              appSchemeLight.error, // Color for delete icons in chips
          disabledColor: appSchemeLight.onSurface
              .withOpacity(0.38), // Color for disabled chips
          selectedColor:
              appSchemeLight.primary, // Color when the chip is selected
          secondarySelectedColor: appSchemeLight
              .secondary, // Color when the chip is selected, for secondary style
          labelStyle: TextStyle(
              color: appSchemeLight
                  .onPrimaryContainer), // Text style for chip labels
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
        ),
        dataTableTheme: DataTableThemeData(
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
        ),
        datePickerTheme: const DatePickerThemeData(),
        dialogTheme: DialogTheme(
          backgroundColor: appSchemeLight
              .surface, // Use the surface color for dialog backgrounds
          titleTextStyle: TextStyle(
            color: appSchemeLight
                .onSurface, // Use the onSurface color for dialog title text
            fontSize: 20.0, // Example size, adjust as needed
            fontWeight: FontWeight.bold, // Example weight, adjust as needed
          ),
          contentTextStyle: TextStyle(
            color: appSchemeLight
                .onSurface, // Use the onSurface color for dialog content text
            fontSize: 16.0, // Example size, adjust as needed
          ),
          elevation: 24.0, // Example elevation, adjust as needed
          shape: RoundedRectangleBorder(
            // Example shape, adjust as needed
            borderRadius: BorderRadius.circular(4.0),
          ),
          // You can add other properties as needed
        ),
        dividerTheme: DividerThemeData(
          color: appSchemeLight.outline, // Use the outline color for dividers
          space: 1.0, // The amount of space occupied by a Divider
          thickness: 1.0, // The thickness of the line drawn within a divider
          indent:
              10.0, // The amount of empty space to the leading edge of a divider.
          endIndent:
              10.0, // The amount of empty space to the trailing edge of a divider.
        ),
        drawerTheme: DrawerThemeData(
          backgroundColor: appSchemeLight
              .surface, // Use the surface color for Drawer background
          scrimColor: appSchemeLight
              .scrim, // Use the scrim color when the Drawer is open
          elevation: 16.0, // Example elevation, adjust as needed
          shape: const RoundedRectangleBorder(
            // Example shape, adjust as needed
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
          ),
          // You can add other properties as needed
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            splashFactory: InkRipple.splashFactory,
            backgroundColor: MaterialStateProperty.all(appSchemeLight.primary),
            foregroundColor:
                MaterialStateProperty.all(appSchemeLight.onPrimary),
            overlayColor: MaterialStateProperty.all(
                appSchemeLight.primaryContainer.withOpacity(0.2)),
            shadowColor: MaterialStateProperty.all(appSchemeLight.shadow),
            elevation: MaterialStateProperty.all(2),
            textStyle: MaterialStateProperty.all(
              const TextStyle(
                fontSize: 16, // Example size for Body Large
                fontWeight: FontWeight.w500,
              ),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ),
        expansionTileTheme: ExpansionTileThemeData(
          backgroundColor: appSchemeLight.surface,
          iconColor: appSchemeLight.secondary,
          collapsedIconColor: appSchemeLight.onSurface,
          textColor: appSchemeLight.onSurface,
          collapsedTextColor: appSchemeLight.onSurfaceVariant,
          tilePadding: const EdgeInsets.symmetric(horizontal: 16.0),
          expandedAlignment: Alignment.centerLeft,
          childrenPadding: const EdgeInsets.symmetric(vertical: 8.0),
        ),
        inputDecorationTheme: InputDecorationTheme(
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
            counterStyle: TextStyle(color: appSchemeLight.onSurfaceVariant)),
        filledButtonTheme: FilledButtonThemeData(
            style: ButtonStyle(
          splashFactory: InkRipple.splashFactory,
          backgroundColor: MaterialStateProperty.all(appSchemeLight.primary),
          foregroundColor: MaterialStateProperty.all(appSchemeLight.onPrimary),
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return appSchemeLight.primaryContainer.withOpacity(0.2);
              }
              if (states.contains(MaterialState.hovered)) {
                return appSchemeLight.primaryContainer.withOpacity(0.08);
              }
              if (states.contains(MaterialState.focused)) {
                return appSchemeLight.primaryContainer.withOpacity(0.2);
              }
              return null; // Defer to the widget's default.
            },
          ),
          elevation: MaterialStateProperty.resolveWith<double>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return 6.0;
              }
              return 2.0; // Default elevation.
            },
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
            ),
          ),
          textStyle: MaterialStateProperty.all<TextStyle>(
            const TextStyle(
              fontSize: 16, // Example size for Body Large
              fontWeight: FontWeight.w500,
            ),
          ),
        )),
        iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(
            splashFactory: InkRipple.splashFactory,
            backgroundColor:
                MaterialStateProperty.all(appSchemeLight.secondaryContainer),
            foregroundColor:
                MaterialStateProperty.all(appSchemeLight.onSecondaryContainer),
            overlayColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return appSchemeLight.secondary.withOpacity(0.3);
                }
                if (states.contains(MaterialState.hovered)) {
                  return appSchemeLight.secondary.withOpacity(0.08);
                }
                return null; // Defer to the widget's default.
              },
            ),
            shadowColor: MaterialStateProperty.all(appSchemeLight.shadow),
            elevation: MaterialStateProperty.all(2),
            padding: MaterialStateProperty.all(const EdgeInsets.all(8)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
              ),
            ),
            // Define other properties if needed
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            splashFactory: InkRipple.splashFactory,
            backgroundColor: MaterialStateProperty.all(appSchemeLight.surface),
            foregroundColor:
                MaterialStateProperty.all(appSchemeLight.onSurface),
            overlayColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return appSchemeLight.primary.withOpacity(0.2);
                }
                if (states.contains(MaterialState.hovered)) {
                  return appSchemeLight.primary.withOpacity(0.08);
                }
                return null; // Defer to the widget's default.
              },
            ),
            side: MaterialStateProperty.all(BorderSide(
              color: appSchemeLight.primary, // Border color
              width: 1.0, // Border width
            )),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
              ),
            ),
            textStyle: MaterialStateProperty.all(
              TextStyle(
                color: appSchemeLight.onSurface, // Text color
                fontSize: 16, // Font size
              ),
            ),
            padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0)),
          ),
        ),
        radioTheme: RadioThemeData(
          fillColor: MaterialStateProperty.all(appSchemeLight.primary),
          overlayColor: MaterialStateProperty.all(
              appSchemeLight.onPrimary.withOpacity(0.2)),
          splashRadius: 24, // Default splash radius
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            splashFactory: InkRipple.splashFactory,
            backgroundColor: MaterialStateProperty.all(Colors
                .transparent), // Typically, TextButtons have a transparent background
            foregroundColor:
                MaterialStateProperty.all(appSchemeLight.primary), // Text color
            overlayColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return appSchemeLight.primary.withOpacity(0.2);
                }
                if (states.contains(MaterialState.hovered)) {
                  return appSchemeLight.primary.withOpacity(0.08);
                }
                return null; // Defer to the widget's default.
              },
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
              ),
            ),
            textStyle: MaterialStateProperty.all(
              const TextStyle(
                fontSize: 16, // Example size for Body Large
                fontWeight: FontWeight.w500,
              ),
            ),
            padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0)),
          ),
        ),
        switchTheme: SwitchThemeData(
          thumbColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return appSchemeLight
                    .secondary; // Thumb color when the switch is on
              }
              return appSchemeLight.onSurface
                  .withOpacity(0.5); // Thumb color when the switch is off
            },
          ),
          trackColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return appSchemeLight.secondary
                    .withOpacity(0.5); // Track color when the switch is on
              }
              return appSchemeLight.onSurface
                  .withOpacity(0.1); // Track color when the switch is off
            },
          ),
          splashRadius: 20, // Splash radius for the ink response
        ),
        toggleButtonsTheme: ToggleButtonsThemeData(
          fillColor: appSchemeLight.primary,
          selectedColor: appSchemeLight.onPrimary,
          hoverColor: appSchemeLight.primaryContainer.withOpacity(0.08),
          focusColor: appSchemeLight.primaryContainer.withOpacity(0.12),
          splashColor: appSchemeLight.primaryContainer.withOpacity(0.12),
          textStyle: TextStyle(
            fontSize: 16, // Example size for Body Large
            fontWeight: FontWeight.w500,
            color: appSchemeLight.onSurface, // Default text color
          ),
          borderColor: appSchemeLight.outline,
          selectedBorderColor: appSchemeLight.primary,
          borderRadius: BorderRadius.circular(4.0),
          borderWidth: 2, // Border width
        ),
        tooltipTheme: TooltipThemeData(
          decoration: BoxDecoration(
            color: appSchemeLight
                .primaryContainer, // Background color of the tooltip
            borderRadius: BorderRadius.circular(4.0), // Rounded corners
          ),
          textStyle: TextStyle(
            color: appSchemeLight
                .onPrimaryContainer, // Text color inside the tooltip
            fontSize: 14, // Example size for Body Small
          ),
          padding: const EdgeInsets.all(8.0), // Inner padding of the tooltip
          margin: const EdgeInsets.symmetric(
              horizontal: 8.0), // Margin around the tooltip
          showDuration:
              const Duration(seconds: 3), // Duration the tooltip will be shown
          waitDuration: const Duration(
              seconds: 1), // Duration to wait before showing the tooltip
          height: 32, // Height of the tooltip
          preferBelow:
              false, // Prefer showing the tooltip above the widget if there's space
          verticalOffset: 16, // Vertical offset from the widget
        ),
        timePickerTheme: TimePickerThemeData(
          backgroundColor: appSchemeLight.background,
          dialHandColor: appSchemeLight.primary,
          dialBackgroundColor: appSchemeLight.surfaceVariant,
          dayPeriodColor: appSchemeLight.secondaryContainer,
          dayPeriodTextColor: appSchemeLight.onSecondaryContainer,
          hourMinuteTextColor: appSchemeLight.onPrimaryContainer,
          hourMinuteColor: appSchemeLight.primaryContainer,
          entryModeIconColor: appSchemeLight.tertiary,
          helpTextStyle: TextStyle(
            color: appSchemeLight.onBackground,
            fontSize: 14, // Example size for Body Small
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          hourMinuteShape: RoundedRectangleBorder(
            side: BorderSide(
              color: appSchemeLight.primary,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          dayPeriodShape: RoundedRectangleBorder(
            side: BorderSide(
              color: appSchemeLight.secondary,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: appSchemeLight.outline),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: appSchemeLight.primary),
            ),
            labelStyle: TextStyle(
              color: appSchemeLight.onSurface,
              fontSize: 16, // Example size for Body Large
            ),
          ),
          // Define other properties if needed
        ),
        tabBarTheme: TabBarTheme(
          // The color of the tab labels
          labelColor: appSchemeLight.onPrimary,
          // The color of the unselected tab labels
          unselectedLabelColor: appSchemeLight.onSurfaceVariant,
          // The padding added to each of the tab labels
          labelPadding: const EdgeInsets.symmetric(horizontal: 8.0),
          // The style of text to display for the tab labels
          labelStyle: const TextStyle(
            fontSize: 16, // Example size for Body Large
            fontWeight: FontWeight.w500,
          ),
          // The style of text to display for the unselected tab labels
          unselectedLabelStyle: const TextStyle(
            fontSize: 14, // Example size for Body Small
            fontWeight: FontWeight.w400,
          ),
          // The color of the tab indicator
          indicatorColor: appSchemeLight.primary,
          // The size/shape of the tab indicator
          indicatorSize: TabBarIndicatorSize.tab,
          // The padding added to the tab indicator

          // The decoration to paint behind the tab labels
          indicator: BoxDecoration(
            color: appSchemeLight.primaryContainer,
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
        snackBarTheme: SnackBarThemeData(
          backgroundColor:
              appSchemeLight.surfaceVariant, // Background color of the SnackBar
          actionTextColor: appSchemeLight.primary, // Color of the action text
          disabledActionTextColor: appSchemeLight.onSurface.withOpacity(
              0.38), // Color of the action text when it is disabled
          contentTextStyle: TextStyle(
            color: appSchemeLight.onSurface, // Text color inside the SnackBar
            fontSize: 16, // Example size for Body Large
          ),
          elevation: 6.0, // Elevation of the SnackBar
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0), // Shape of the SnackBar
          ),
          behavior: SnackBarBehavior.floating, // Behavior of the SnackBar
          width: 280.0, // Width of the SnackBar
        ),
        segmentedButtonTheme: SegmentedButtonThemeData(
          // Define the style for the buttons
          style: ButtonStyle(
            splashFactory: InkRipple.splashFactory,
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.selected)) {
                  return appSchemeLight
                      .primary; // Background color when the button is selected
                }
                return appSchemeLight
                    .primaryContainer; // Background color when the button is not selected
              },
            ),
            foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.selected)) {
                  return appSchemeLight
                      .onPrimary; // Text color when the button is selected
                }
                return appSchemeLight
                    .onPrimaryContainer; // Text color when the button is not selected
              },
            ),
            overlayColor: MaterialStateProperty.all(
                appSchemeLight.primary.withOpacity(0.2)),
            // Define other properties if needed
          ),
        ),
        listTileTheme: ListTileThemeData(
          tileColor: appSchemeLight.surface,
          selectedColor: appSchemeLight.primary,
          iconColor: appSchemeLight.secondary,
          textColor: appSchemeLight.onSurface,
          // Add other properties as needed
        ),
        menuButtonTheme: MenuButtonThemeData(
          style: ButtonStyle(
            splashFactory: InkRipple.splashFactory,
            backgroundColor:
                MaterialStateProperty.all<Color>(appSchemeLight.primary),
            foregroundColor:
                MaterialStateProperty.all<Color>(appSchemeLight.onPrimary),
            overlayColor: MaterialStateProperty.all<Color>(
                appSchemeLight.primaryContainer),
            // Add other properties as needed
          ),
        ),
        sliderTheme: SliderThemeData(
          activeTrackColor: appSchemeLight.primary,
          inactiveTrackColor: appSchemeLight.primaryContainer,
          thumbColor: appSchemeLight.secondary,
          overlayColor: appSchemeLight.secondaryContainer.withOpacity(0.2),
          valueIndicatorColor: appSchemeLight.tertiary,
          // Add other properties as needed
        ),
        menuTheme: MenuThemeData(
          style: MenuStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(appSchemeLight.surface),
            // surfaceTintColor: MaterialStateProperty.all<Color>(appSchemeLight.onSurface),
            // shadowColor: MaterialStateProperty.all<Color>(appSchemeLight.primaryContainer.withOpacity(0.1)),
            // Add other properties as needed
          ),
        ),
        menuBarTheme: MenuBarThemeData(
          style: MenuStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(appSchemeLight.surface),
            // surfaceTintColor: MaterialStateProperty.all<Color>(appSchemeLight.onSurface),
            // shadowColor: MaterialStateProperty.all<Color>(appSchemeLight.primaryContainer.withOpacity(0.1)),
            // Add other properties as needed
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: appSchemeLight.primary,
          foregroundColor: appSchemeLight.onPrimary,
          hoverColor: appSchemeLight.primaryContainer.withOpacity(0.1),
          focusColor: appSchemeLight.primaryContainer.withOpacity(0.2),
          splashColor: appSchemeLight.secondaryContainer.withOpacity(0.2),
          // Add other properties as needed
        ),
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: appSchemeLight.background,
          indicatorColor: appSchemeLight.secondary,
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(color: appSchemeLight.onBackground),
          ),
          iconTheme: MaterialStateProperty.all(
            IconThemeData(color: appSchemeLight.primary),
          ),
          // Add other properties as needed
        ),
        navigationRailTheme: NavigationRailThemeData(
          backgroundColor: appSchemeLight.surfaceVariant,
          selectedIconTheme: IconThemeData(
            color: appSchemeLight.primary,
          ),
          unselectedIconTheme: IconThemeData(
            color: appSchemeLight.onSurfaceVariant,
          ),
          selectedLabelTextStyle: TextStyle(
            color: appSchemeLight.onPrimaryContainer,
          ),
          unselectedLabelTextStyle: TextStyle(
            color: appSchemeLight.onSurfaceVariant,
          ),
          // Add other properties as needed
        ),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            // You can add custom transitions for different platforms
          },
        ),
        popupMenuTheme: PopupMenuThemeData(
          color: appSchemeLight.surface,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
          textStyle: TextStyle(color: appSchemeLight.onSurface),
          // Add other properties as needed
        ),
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all(appSchemeLight.primary),
          trackColor: MaterialStateProperty.all(appSchemeLight.background),
          trackBorderColor: MaterialStateProperty.all(appSchemeLight.outline),
          crossAxisMargin: 2.0,
          mainAxisMargin: 2.0,
          radius: const Radius.circular(8),
          thickness: MaterialStateProperty.all(8.0),
        ),
        searchBarTheme: SearchBarThemeData(
          backgroundColor:
              MaterialStateProperty.all<Color>(appSchemeLight.surface),
          elevation: MaterialStateProperty.all<double>(2.0),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
          ),
          // Add other properties as needed
        ),
        searchViewTheme: SearchViewThemeData(
          backgroundColor: appSchemeLight.surface,
          elevation: 2.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: appSchemeLight.secondary,
          linearTrackColor: appSchemeLight.background,
          circularTrackColor: appSchemeLight.surfaceVariant,
          // Add other properties as needed
        ),
        splashFactory: InkRipple.splashFactory,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: appSchemeLight.primary, // Color of the cursor
          selectionColor: appSchemeLight
              .primaryContainer, // Color of the selection rectangle
          selectionHandleColor:
              appSchemeLight.secondary, // Color of the drag handles
          // Add other properties as needed
        ),
        navigationDrawerTheme: NavigationDrawerThemeData(
          backgroundColor: appSchemeLight.surface,
          elevation: 2.0,
          // You can add other properties as needed
        ),
        focusColor: appSchemeLight.primary,
        typography: Typography.material2018(
          platform: TargetPlatform.android,
          black: Typography.blackMountainView.apply(
            bodyColor: appSchemeLight.onBackground,
            displayColor: appSchemeLight.onBackground,
          ),
          white: Typography.whiteMountainView.apply(
            bodyColor: appSchemeLight.onSurface,
            displayColor: appSchemeLight.onSurface,
          ),
          englishLike: Typography.englishLike2018.apply(
            bodyColor: appSchemeLight.primary,
            displayColor: appSchemeLight.primary,
          ),
          dense: Typography.dense2018.apply(
            bodyColor: appSchemeLight.secondary,
            displayColor: appSchemeLight.secondary,
          ),
          tall: Typography.tall2018.apply(
            bodyColor: appSchemeLight.tertiary,
            displayColor: appSchemeLight.tertiary,
          ),
        ),
        dropdownMenuTheme: DropdownMenuThemeData(
          textStyle: TextStyle(color: appSchemeLight.onSurface),
          // You can add other properties as needed
        ),
        primarySwatch: primaryMaterial,
        cardColor: appSchemeLight.surface,
        dialogBackgroundColor: appSchemeLight.surface,
        disabledColor: appSchemeLight.onSurface.withOpacity(0.38),
        dividerColor: appSchemeLight.outline,
        highlightColor: appSchemeLight.primaryContainer,
        hintColor: appSchemeLight.onSurfaceVariant,
        hoverColor: appSchemeLight.secondaryContainer.withOpacity(0.08),
        primaryColor: appSchemeLight.primary,
        primaryColorDark: appSchemeLight.primaryContainer,
        primaryColorLight: appSchemeLight.primaryContainer,
        secondaryHeaderColor: appSchemeLight.secondaryContainer,
        splashColor: appSchemeLight.secondaryContainer.withOpacity(0.12),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        primaryIconTheme: IconThemeData(color: appSchemeLight.onPrimary),
        indicatorColor: appSchemeLight.secondary,
        unselectedWidgetColor: appSchemeLight.onSurface.withOpacity(0.60),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        applyElevationOverlayColor: false,
        scaffoldBackgroundColor: appSchemeLight.background);
  }
}
