import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/tabes/quran/quran_content.dart';
import 'package:islami_app/theme_app.dart';

class SuraContent extends StatelessWidget {
  static const routeName ="/sura_content";
  List<String> sura =['بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ '];

 late SuranNameContent arges ;

  @override
  Widget build(BuildContext context) {
  arges = ModalRoute.of(context)!.settings.arguments as SuranNameContent;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(
          'assets/images/bg3.png'
        ),
        fit: BoxFit.fill),),
      child: Scaffold(
        appBar: AppBar(title: 
        Text('اسلامى'),),
        body: Container(
          padding: EdgeInsets.all(24),
          margin: EdgeInsets.symmetric(vertical: MediaQuery.sizeOf(context).height * .06,
          horizontal: 20),
          decoration: BoxDecoration(
            color: AppTheme.white,
            borderRadius: BorderRadius.circular(20),

          ),
        
          child: ListView.builder(itemBuilder: (_,index) =>Text(
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
            sura[index],
          ),
            
          itemCount: sura.length,
          ),
        )
        ),
        
      
    );
  }
}