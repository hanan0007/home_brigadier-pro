import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  BuildContext context;
  static AppTextStyle? _instance;

  factory AppTextStyle(BuildContext context) {
    _instance?.context = context;
    _instance ??= AppTextStyle._(context);
    return _instance!;
  }
  AppTextStyle._(this.context);

  static const displayLargeFont = 32.0;
  static const displayMediumFont = 28.0;
  static const displaySmallFont = 24.0;
  static const headlineLargeFont = 24.0;
  static const headlineMediumFont = 20.0;
  static const headlineSmallFont = 18.0;
  static const titleLargeFont = 24.0;
  static const titleMediumFont = 20.0;
  static const titleSmallFont = 18.0;
  static const bodyLargeFont = 16.0;
  static const bodyMediumFont = 14.0;
  static const bodySmallFont = 12.0;
  static const labelLargeFont = 16.0;
  static const labelMediumFont = 14.0;
  static const labelSmallFont = 12.0;

  // Method to calculate responsive font size based on screen width
  double _getResponsiveFontSize(double baseSize) {
    double screenWidth = MediaQuery.of(context).size.width;
    double scaleFactor = screenWidth < 600
        ? screenWidth / 375.0 // Mobile devices
        : screenWidth < 1200
            ? screenWidth / 768.0 // Tablets
            : screenWidth / 1440.0; // Desktops
    return baseSize * scaleFactor;
  }

  // Method to generate responsive text style
  TextStyle _generateResponsiveTextStyle(TextStyle textStyle, double baseSize) {
    return textStyle.copyWith(fontSize: _getResponsiveFontSize(baseSize));
  }

  // Accessor to the default text theme
  TextTheme get textTheme => Theme.of(context)
      .textTheme
      .apply(fontFamily: GoogleFonts.poppins().fontFamily);

  // Accessor methods for each text style
  TextStyle get _displayLargeStyle => textTheme.displayLarge!;
  TextStyle get _displayMediumStyle => textTheme.displayMedium!;
  TextStyle get _displaySmallStyle => textTheme.displaySmall!;
  TextStyle get _headlineLargeStyle => textTheme.headlineLarge!;
  TextStyle get _headlineMediumStyle => textTheme.headlineMedium!;
  TextStyle get _headlineSmallStyle => textTheme.headlineSmall!;
  TextStyle get _titleLargeStyle => textTheme.titleLarge!;
  TextStyle get _titleMediumStyle => textTheme.titleMedium!;
  TextStyle get _titleSmallStyle => textTheme.titleSmall!;
  TextStyle get _bodyLargeStyle => textTheme.bodyLarge!;
  TextStyle get _bodyMediumStyle => textTheme.bodyMedium!;
  TextStyle get _bodySmallStyle => textTheme.bodySmall!;
  TextStyle get _labelLargeStyle => textTheme.labelLarge!;
  TextStyle get _labelMediumStyle => textTheme.labelMedium!;
  TextStyle get _labelSmallStyle => textTheme.labelSmall!;

  // Accessor methods for each responsive text style
  TextStyle get displayLarge =>
      _generateResponsiveTextStyle(_displayLargeStyle, displayLargeFont);
  TextStyle get displayMedium =>
      _generateResponsiveTextStyle(_displayMediumStyle, displayMediumFont);
  TextStyle get displaySmall =>
      _generateResponsiveTextStyle(_displaySmallStyle, displaySmallFont);
  TextStyle get headlineLarge =>
      _generateResponsiveTextStyle(_headlineLargeStyle, headlineLargeFont);
  TextStyle get headlineMedium =>
      _generateResponsiveTextStyle(_headlineMediumStyle, headlineMediumFont);
  TextStyle get headlineSmall =>
      _generateResponsiveTextStyle(_headlineSmallStyle, headlineSmallFont);
  TextStyle get titleLarge =>
      _generateResponsiveTextStyle(_titleLargeStyle, titleLargeFont);
  TextStyle get titleMedium =>
      _generateResponsiveTextStyle(_titleMediumStyle, titleMediumFont);
  TextStyle get titleSmall =>
      _generateResponsiveTextStyle(_titleSmallStyle, titleSmallFont);
  TextStyle get bodyLarge =>
      _generateResponsiveTextStyle(_bodyLargeStyle, bodyLargeFont);
  TextStyle get bodyMedium =>
      _generateResponsiveTextStyle(_bodyMediumStyle, bodyMediumFont);
  TextStyle get bodySmall =>
      _generateResponsiveTextStyle(_bodySmallStyle, bodySmallFont);
  TextStyle get labelLarge =>
      _generateResponsiveTextStyle(_labelLargeStyle, labelLargeFont);
  TextStyle get labelMedium =>
      _generateResponsiveTextStyle(_labelMediumStyle, labelMediumFont);
  TextStyle get labelSmall =>
      _generateResponsiveTextStyle(_labelSmallStyle, labelSmallFont);
}
