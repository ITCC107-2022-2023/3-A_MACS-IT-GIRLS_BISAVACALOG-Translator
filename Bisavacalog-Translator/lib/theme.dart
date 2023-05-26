import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

///This is the overall theme.

ThemeData theme() {
  return ThemeData(
      colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: kColorPrimary,
          onPrimary: kColorPrimary2,
          secondary: kColorSecondary,
          onSecondary: kColorSecondary2,
          error: kDangerColor,
          onError: kDangerColor,
          background: kColorSecondary2,
          onBackground: kColorSecondary2,
          surface: kColorSecondary2,
          onSurface: kColorSecondary2),
      appBarTheme: AppBarTheme(
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          titleTextStyle: GoogleFonts.montserrat(
              fontSize: 20, fontWeight: FontWeight.bold, color: kColorPrimary3),
          backgroundColor: kColorPrimary,
          elevation: 0,
          iconTheme: IconThemeData(color: kColorPrimary3)),
      textTheme: TextTheme(
        displayMedium: GoogleFonts.poppins(fontSize: 19, color: kColorWhite1),
        displaySmall: GoogleFonts.roboto(fontSize: 20, color: kColorSecondary),
        bodySmall: GoogleFonts.roboto(
            color: kColorTextBody2,
            fontSize: 15,
            fontWeight: FontWeight.normal),
        displayLarge: GoogleFonts.roboto(
            fontSize: 36,
            fontWeight: FontWeight.normal,
            color: kColorSecondary),
        titleSmall: GoogleFonts.roboto(
            fontSize: 17, fontWeight: FontWeight.bold, color: kColorSecondary),
        titleLarge: GoogleFonts.montserrat(
            fontSize: 48, fontWeight: FontWeight.bold, color: kColorSecondary),
        labelMedium: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
        labelLarge: GoogleFonts.poppins(
            fontSize: 32, color: kColorWhite1, fontWeight: FontWeight.normal),
        labelSmall: GoogleFonts.poppins(fontSize: 14, color: kColorSecondary),
      ),
      scaffoldBackgroundColor: kColorSecondary2);
}

// AppBar customAppBar({required String title, required VoidCallback onPressed}) {
//   return AppBar(
//     iconTheme: const IconThemeData(color: kPrima),
//     backgroundColor: Colors.white,
//     elevation: 0,
//     centerTitle: true,
//     leading: IconButton(
//       icon: const Icon(FluentIcons.arrow_hook_up_left_24_regular),
//       onPressed: onPressed,
//     ),
//     title: Text(
//       title,
//       style: GoogleFonts.notoSans(
//         color: kPrimaryBlue,
//         fontSize: 16,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//   );
// }

AppBar mainAppBar() {
  return AppBar(
    // key: appBarKey,
    iconTheme: const IconThemeData(color: kColorPrimary2),
    backgroundColor: Colors.white,
    elevation: 0,
    centerTitle: true,
    leadingWidth: 100,
    actions: [
      // GestureDetector(
      //     onTap: () => Navigator.pushNamed(context, "/inbox"),
      //     child: const Icon(FluentIcons.mail_24_regular)),
      // const SizedBox(
      //   width: 20,
      // ),
      // GestureDetector(
      //     onTap: () {
      //       _scaffoldKey.currentState?.openEndDrawer();
      //     },
      //     child: const Icon(FluentIcons.navigation_24_regular)),
      // const SizedBox(
      //   width: 12,
      // )
    ],
    // leading: Builder(builder: (context) {
    //   return SwitchDutyMode(
    //     isActiveCallBack: isActiveCallback,
    //     isActive: isActive,
    //   );
    // }),
    title: SizedBox(
      height: 70,
      child: Image.asset('assets/images/yallamovers_text_logo.png'),
    ),
  );
}
