import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musix/screens/home.dart';
import 'package:musix/utils/theme_colors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: ThemeColors.accentColor,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: ThemeColors.accentColor,
      systemNavigationBarIconBrightness: Brightness.dark));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: ThemeColors.primaryColor,
        accentColor: ThemeColors.accentColor,
        textTheme: GoogleFonts.dmSansTextTheme(textTheme).apply(bodyColor: ThemeColors.primaryColor).copyWith(
          headline1: GoogleFonts.oswald(textStyle: textTheme.headline1),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
