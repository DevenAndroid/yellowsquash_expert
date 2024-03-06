import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yellowsquash_expert/resource/routes.dart';
import 'package:yellowsquash_expert/widgets/apptheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      darkTheme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      initialRoute: "/splashScreen",
      getPages: MyRouter.route,
      theme: ThemeData(
          fontFamily: GoogleFonts.poppins().fontFamily,
          useMaterial3: true,
          progressIndicatorTheme: const ProgressIndicatorThemeData(
              color: Colors.orange
          ),
          // bottomAppBarTheme: const BottomAppBarTheme(color: Colors.greenAccent, elevation: 10),
          primaryColor: AppTheme.primaryColor,
          scaffoldBackgroundColor: Colors.white,
          textTheme: TextTheme(
              bodyMedium: GoogleFonts.poppins(),
              bodyLarge: GoogleFonts.poppins(),
              bodySmall: GoogleFonts.poppins(),
              titleMedium: GoogleFonts.poppins()
          ),
          cardTheme: const CardTheme(
            color: Colors.white,
            surfaceTintColor: Colors.white,
          ),
          dialogTheme: const DialogTheme(
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.white
          ),
          // highlightColor: AppTheme.primaryColor,
          scrollbarTheme: const ScrollbarThemeData().copyWith(
            thumbColor: MaterialStateProperty.all(Colors.white),
          ),
          colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white)
      ),
    );
  }
}