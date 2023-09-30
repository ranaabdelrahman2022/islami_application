import 'package:flutter/material.dart';
import 'package:islami_app/moduls/hadeth/hadeth_view.dart';
import 'package:islami_app/moduls/quran/quran_view.dart';
import 'package:islami_app/moduls/radio/radio_view.dart';
import 'package:islami_app/moduls/settings/settins_view.dart';
import 'package:islami_app/moduls/tasbeh/tasbeh_view.dart';

class HomeLayOut extends StatefulWidget {
  static const String routeName = "home_layout";

  HomeLayOut({super.key});

  @override
  State<HomeLayOut> createState() => _HomeLayOutState();
}

class _HomeLayOutState extends State<HomeLayOut> {
  int selectedIndex = 0;
  List<Widget> screens = [
    RadioView(),
    TasbehView(),
    HadethView(),
    QuranView(),
    SettingsView()
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg3.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("إسلامي"),
        ),
        body: screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xFFB7935F),
          selectedIconTheme: IconThemeData(
            color: Colors.black,
            size: 32,
          ),
          selectedItemColor: Colors.black,
          unselectedIconTheme: IconThemeData(
            color: Colors.white,
            size: 28,
          ),
          unselectedItemColor: Colors.white,
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/radio.png")),
                label: "Radio"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                label: "Sebha"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage("assets/images/quran-quran-svgrepo-com.png")),
                label: "Hadeth"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/quran.png")),
                label: "Quran"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ],
        ),
      ),
    );
  }
}
