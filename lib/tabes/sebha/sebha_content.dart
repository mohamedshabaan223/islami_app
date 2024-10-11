import 'package:flutter/material.dart';
import 'package:islami_app/theme_app.dart';

class SebhaContent extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          
      Padding(
        padding:  EdgeInsets.all(35.0),
        child: Image.asset('assets/images/Group 10.png'),
      ),
      Text('عدد التسبيحات',
      style: Theme.of(context).textTheme.headlineSmall,
      ),
      SizedBox(height: MediaQuery.sizeOf(context).height * 0.02,),
      Container(padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
       color: AppTheme.lightPrimary,
       borderRadius: BorderRadius.circular(25),),
       child: Text('30',
       style: Theme.of(context).textTheme.headlineSmall,),
       ),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.02,),
        Container(padding: EdgeInsets.symmetric(horizontal: 15 , vertical: 5),
        decoration: BoxDecoration(
       color: AppTheme.lightPrimary,
       borderRadius: BorderRadius.circular(25),),
       child: Text('سبحان الله',
       style: Theme.of(context).textTheme.headlineMedium,),
       ),

        
      ],),
    );
        
        
  }
}