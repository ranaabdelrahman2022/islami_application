import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuranItem extends StatelessWidget {
  final String suraName;
  final String suraNumber;

  const QuranItem(
      {super.key, required this.suraName, required this.suraNumber});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Text(
          suraNumber,
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
        Expanded(
            child: Text(
          suraName,
          textAlign: TextAlign.center,
          style: GoogleFonts.elMessiri(
            fontWeight: FontWeight.w500,
            fontSize: 25,
            color: Colors.black,
          ),
        )),
      ],
    );
  }
}
