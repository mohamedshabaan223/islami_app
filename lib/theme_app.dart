import 'package:flutter/material.dart';
class AppTheme{
  static const Color lightPrimary = Color(0xFFB7935F);
  static const Color black = Color(0xFF242424);
  static const Color white = Color(0xFFF8F8F8);
  static const Color darkPrimary = Color(0xFF141A2E);
  static const Color gold = Color(0xFFFACC1D);



    static ThemeData lightTheme =ThemeData(
      primaryColor: lightPrimary,
      appBarTheme: AppBarTheme(
        
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: black,
          

        )
        
      ),
      textTheme: TextTheme(
        headlineSmall: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: black,
          
        ),
        headlineMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: white,
          
        ),
        titleLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: black
        )
      ),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        
        backgroundColor: lightPrimary,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: white,
        selectedItemColor: black,
      ),
    );

    static ThemeData darkTheme = ThemeData();
}