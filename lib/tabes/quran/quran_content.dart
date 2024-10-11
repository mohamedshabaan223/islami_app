import 'package:flutter/material.dart';
import 'package:islami_app/sura_content.dart';

class QuranContent extends StatelessWidget {
  List<String> ayat =[
    "الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/quran_header_icn.png',
          height:MediaQuery.sizeOf(context).height * 0.25,),
          
          Expanded(
            child: ListView.separated(padding: EdgeInsets.only(top: 15),
              itemBuilder:(_,index)=>GestureDetector(
                onTap: (){
                   Navigator.of(context).pushNamed(SuraContent.routeName,
                   arguments: SuranNameContent(suraName:ayat[index] , index: index));
                }
                ,
                child: Text(
                style: Theme.of(context).textTheme.headlineSmall,
                ayat[index],
                textAlign: TextAlign.center,
                            ),
              ),
            itemCount: ayat.length,
             separatorBuilder: (_,__)=> SizedBox(height: 20,),
            ),
          ),
          ],
          )
          
        
      )
    ;
  }
}
class SuranNameContent{
  String suraName;
  int index ;
  SuranNameContent({required this.suraName , required this.index});
}