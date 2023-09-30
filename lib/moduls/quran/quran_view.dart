import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/moduls/quran/quran_details_view.dart';
import 'package:islami_app/moduls/quran/widget/quean_item.dart';

class QuranView extends StatelessWidget {
  QuranView({super.key});

  List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود"
    ,
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون"
    ,
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ"
    ,
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف"
    ,
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة"
    ,
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج"
    ,
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار"
    ,
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح"
    ,
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
        children: [
          Image.asset("assets/images/Screenshot (1).png"),
          Divider(
            color: Color(0xFFB7935F),
            thickness: 1.2,
            indent: 10,
            endIndent: 10,
            height: 5,
          ),
          Row(
            children: [
              Expanded(child: Text(" رقم السوره",
                textAlign: TextAlign.center,
                style: GoogleFonts.elMessiri(
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                  color: Colors.black,
                ),
              )),
              Container(
                width: 1.2,
                height: 45,
                color: Color(0xFFB7935F),
              ),
              Expanded(child: Text("اسم السوره",
                textAlign: TextAlign.center,
                style: GoogleFonts.elMessiri(
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                  color: Colors.black,
                ),
              )),

            ],
          ),
          Divider(
            color: Color(0xFFB7935F),
            thickness: 1.2,
            indent: 10,
            endIndent: 10,
            height: 5,
          ),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) =>
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, QuranDetailsView.routeName);
                  },
                  child: QuranItem(
                    suraName: suraNames[index],
                    suraNumber: "${index + 1}",
                  ),
                ),
              itemCount: 50,
            ),
          )
        ]);
  }
}
