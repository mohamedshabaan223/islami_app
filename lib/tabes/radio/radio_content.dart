import 'package:flutter/material.dart';

class RadioContent extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(children: [
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.2,),
        Image.asset('assets/images/551-5517026_radio-vector-png-old-radio-png-vector-transparent.png'),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.06,),
        Text(' إذاعة القرأن الكريم' ,
        style: Theme.of(context).textTheme.headlineSmall,),
        SizedBox(height:  MediaQuery.sizeOf(context).height * 0.07,),
        Image.asset('assets/images/Group 5.png' ,
        ),
        
      ],),
    );
  }
}