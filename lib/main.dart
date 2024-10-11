import 'package:flutter/material.dart';
import 'package:islami_app/home_sscreen.dart';
import 'package:islami_app/sura_content.dart';
import 'package:islami_app/theme_app.dart';

void main() {
  runApp( islamiApp());{

  }
  
  }
  class islamiApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
      HomeSscreen.routeName:(context) =>HomeSscreen(),
      SuraContent.routeName:(_) =>SuraContent(),
      },
      initialRoute: HomeSscreen.routeName,
      theme: AppTheme.lightTheme ,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
    );
    
  }
}

  

