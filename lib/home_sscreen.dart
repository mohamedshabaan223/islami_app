import 'package:flutter/material.dart';
import 'package:islami_app/tabes/hadeth/hadeth_content.dart';
import 'package:islami_app/tabes/quran/quran_content.dart';
import 'package:islami_app/tabes/radio/radio_content.dart';
import 'package:islami_app/tabes/sebha/sebha_content.dart';
import 'package:islami_app/tabes/setting/setting_content.dart';


class HomeSscreen extends StatefulWidget {
  static final routeName ="/home";

  @override
  State<HomeSscreen> createState() => _HomeSscreenState();
}

class _HomeSscreenState extends State<HomeSscreen> {
  int currentIndex = 0;
  List<Widget> tabes =[
    QuranContent(),
    SebhaContent(),
    HadethContent(),
    RadioContent(),
    SettingContent(),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(
          'assets/images/bg3.png'
        ),
        fit: BoxFit.fill),
        
        
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('اسلامى'),
        ),
        body: tabes[currentIndex],
        
       bottomNavigationBar: BottomNavigationBar(
        currentIndex:currentIndex,
        onTap: (index){
          currentIndex =index;
          
          setState(() {
            
          });
        },
        items:
          [
          BottomNavigationBarItem(
            icon: ImageIcon(
            AssetImage('assets/images/quran.png')),
            label: 'quran'),
            BottomNavigationBarItem(icon: ImageIcon(
            AssetImage('assets/images/sebha.png')),
            label: 'sebha'),
            BottomNavigationBarItem(icon: ImageIcon(
            AssetImage('assets/images/hadeth.png')),
            label: 'hadeth'),
      
            BottomNavigationBarItem(icon: ImageIcon(
            AssetImage('assets/images/radio.png')),
            label: 'radio'),
      
            BottomNavigationBarItem(icon: Icon(Icons.settings_outlined),
            label: 'setting'
           )
        ]),
        
         
        ),
    )
    ;
  }
}