import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuranDetailsView extends StatelessWidget {
  static const String routeName = "quran_Details";

  const QuranDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg3.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("إسلامي"),
        ),
        body: Container(
          margin: EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 120),
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 15),
          width: mediaQuuery.width,
          height: mediaQuuery.height,
          decoration: BoxDecoration(
            color: Color(0xFFF8F8F8).withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sura Name",
                    style: GoogleFonts.elMessiri(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 4),
                  Icon(
                    Icons.play_circle,
                    size: 32,
                    color: Colors.black,
                  )
                ],
              ),
              Divider(
                height: 10,
                indent: 30,
                endIndent: 30,
                thickness: 1.2,
                color: Color(0xFFB7935F),
              ),
              Text(
                "HGLL",
                style: GoogleFonts.cinzelDecorative(
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
