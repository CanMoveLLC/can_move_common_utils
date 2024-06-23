import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkTheme(BuildContext context) {
  var textTheme = _buildDarkTextTheme(context);
  final colorScheme = const ColorScheme.dark().copyWith(
    primary: Color(0xFF361F01),
    secondary: Color(0xFFB46503),
    /*primary: Color(0xFF2B2D2F),
      secondary: Colors.purple,*/
  );
  var theme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: colorScheme.primary,
    // accentColor: colorScheme.secondary,
    dividerColor: Colors.white10,
    textButtonTheme: _textButtonThemeData,
    scaffoldBackgroundColor: const Color(0xFF1D1E1F),
    cardTheme: const CardTheme(
      elevation: 3,
      // color: Color(0xFF2B2D2F),
      shadowColor: Colors.black45,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: colorScheme.secondary,
        backgroundColor: Colors.grey[850],
        side: BorderSide(
          color: Colors.grey[800]!,
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      // filled: true,
      suffixIconColor: Colors.grey[100],
      hintStyle: textTheme.bodySmall,
      contentPadding: const EdgeInsets.all(15),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: Colors.grey,
          width: 0.5,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: Colors.grey,
          width: 0.5,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: colorScheme.secondary,
          width: 0.5,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: Colors.red,
          width: 0.5,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: Colors.red,
          width: 0.5,
        ),
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: colorScheme.secondary,
      selectionColor: colorScheme.secondary,
      selectionHandleColor: colorScheme.secondary,
    ), colorScheme: colorScheme.copyWith(
      primary: colorScheme.secondary,
      secondary: colorScheme.primary,
    ).copyWith(error: Colors.red[900]),
  );

  return theme.copyWith(
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    cardTheme: theme.cardTheme.copyWith(
      color: Colors.grey[900],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    iconTheme: IconThemeData(
      color: colorScheme.secondary,
    ),
    buttonTheme: ButtonThemeData(
      colorScheme: colorScheme,
      textTheme: ButtonTextTheme.primary,
      buttonColor: colorScheme.primary,
      height: 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    appBarTheme: theme.appBarTheme.copyWith(
      elevation: 0,
      color: theme.scaffoldBackgroundColor,
      iconTheme: IconThemeData(
        color: colorScheme.secondary,
      ),
      toolbarTextStyle: textTheme.labelMedium,
      titleTextStyle: textTheme.bodyMedium,
    ),
    textTheme: textTheme,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

ThemeData lightTheme(BuildContext context) {
  var textTheme = _buildTextTheme(context);
  final colorScheme = const ColorScheme.light().copyWith(
    primary: Color(0xFFF6EBDD),
    secondary: Color.fromRGBO(249, 158, 46, 1),
    /*
    * primary: Color(0xFFF6F4F6),
    secondary: Colors.purple,*/
  );
  var theme = ThemeData(
    colorScheme: colorScheme.copyWith(
      primary: colorScheme.secondary,
      secondary: colorScheme.primary,
    ),
    brightness: Brightness.light,
    primaryColor: colorScheme.primary,
    // accentColor: colorScheme.secondary,
    scaffoldBackgroundColor: Colors.white,
    cardTheme: CardTheme(
      elevation: 3,
      color: Colors.grey[100],
      shadowColor: Colors.black45,
    ),
    dividerColor: Colors.black12,
    textButtonTheme: _textButtonThemeData,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: colorScheme.secondary,
      selectionColor: colorScheme.secondary,
      selectionHandleColor: colorScheme.secondary,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: colorScheme.secondary,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      // filled: true,
      suffixIconColor: Colors.grey[900],
      hintStyle: textTheme.bodySmall,
      fillColor: Colors.grey[50],
      // focusColor: Colors.grey[300],
      contentPadding: const EdgeInsets.all(15),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: Colors.grey,
          width: 0.5,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: Colors.grey,
          width: 0.5,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: colorScheme.secondary,
          width: 0.5,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: Colors.red,
          width: 0.5,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: Colors.red,
          width: 0.5,
        ),
      ),
    ),
  );

  return theme.copyWith(
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    cardTheme: theme.cardTheme.copyWith(
      color: theme.scaffoldBackgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    iconTheme: IconThemeData(
      color: colorScheme.secondary,
    ),
    buttonTheme: ButtonThemeData(
      colorScheme: colorScheme,
      textTheme: ButtonTextTheme.primary,
      buttonColor: colorScheme.primary,
      height: 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    appBarTheme: theme.appBarTheme.copyWith(
      elevation: 0,
      centerTitle: false,
      color: theme.scaffoldBackgroundColor,
      iconTheme: IconThemeData(
        color: colorScheme.secondary,
      ),
      toolbarTextStyle: textTheme.bodyMedium,
      titleTextStyle: textTheme.titleSmall,
    ),
    textTheme: textTheme,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

TextTheme _buildTextTheme(BuildContext context) {
  var textTheme = Theme.of(context).textTheme;

  return GoogleFonts.manropeTextTheme(textTheme).copyWith(
    headlineLarge: GoogleFonts.manrope(
      color: Colors.grey[900],
    ),
    bodyLarge: GoogleFonts.manrope(
      color: Colors.grey[900],
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: GoogleFonts.manrope(
      color: Colors.grey[900],
      fontSize: 20,
      fontWeight: FontWeight.w700,
    ),
    headlineMedium: GoogleFonts.manrope(
      color: Colors.grey[900],
      fontSize: 30,
      fontWeight: FontWeight.w800,
    ),
    headlineSmall: GoogleFonts.manrope(
      color: Colors.grey[900],
      fontSize: 24,
      fontWeight: FontWeight.w800,
    ),
    labelLarge: GoogleFonts.manrope(
      color: Colors.grey[900],
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
    labelMedium: GoogleFonts.manrope(
      color: Colors.grey[900],
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
  );
}

TextTheme _buildDarkTextTheme(BuildContext context) {
  var textTheme = Theme.of(context).textTheme;

  return GoogleFonts.manropeTextTheme(textTheme).copyWith(
    headlineLarge: GoogleFonts.manrope(
      color: Colors.grey[100],
    ),
    bodyLarge: GoogleFonts.manrope(
      color: Colors.grey[100],
      fontSize: 18,
      fontWeight: FontWeight.w800,
    ),
    bodyMedium: GoogleFonts.manrope(
      color: Colors.grey[300],
      fontSize: 20,
      fontWeight: FontWeight.w800,
    ),
    headlineMedium: GoogleFonts.manrope(
      color: Colors.grey[100],
      fontSize: 30,
      fontWeight: FontWeight.w800,
    ),
    headlineSmall: GoogleFonts.manrope(
      color: Colors.grey[100],
      fontSize: 24,
      fontWeight: FontWeight.w800,
    ),
    labelLarge: GoogleFonts.manrope(
      color: Colors.grey[100],
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
    labelMedium: GoogleFonts.manrope(
      color: Colors.grey[100],
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
  );
}

Widget progressIndicator(BuildContext context) {
  return CircularProgressIndicator(
    color: theme(context).colorScheme.secondary,
    strokeWidth: 2,
  );
}

get _textButtonThemeData {
  TextButtonThemeData(
    style: TextButton.styleFrom(
      tapTargetSize: MaterialTapTargetSize.padded,
      padding: const EdgeInsets.symmetric(horizontal: 20),
    ),
  );
}

// RoundedRectangleBorder get _roundedShape {
//   return RoundedRectangleBorder(
//     borderRadius: BorderRadius.circular(10.0),
//   );
// }

Color platformBackgroundColor(BuildContext context) {
  return Theme.of(context).primaryColor;
}

ThemeData theme(BuildContext context) {
  return Theme.of(context);
}

ColorScheme colorScheme(BuildContext context) {
  return Theme.of(context).colorScheme;
}

TextTheme textTheme(BuildContext context) {
  return theme(context).textTheme;
}

Size screenSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

EdgeInsets screenPadding(BuildContext context) {
  return MediaQuery.of(context).padding;
}

double screenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double screenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}
