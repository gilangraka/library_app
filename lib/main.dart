import 'package:flutter/material.dart';
import 'package:libromate_app/helpers/config.dart';
import 'package:libromate_app/modules/auth/onboarding/onboarding_page.dart';
import 'package:libromate_app/modules/book/pages/book_page.dart';
import 'package:libromate_app/modules/home/pages/home_page.dart';
import 'package:libromate_app/modules/profile/pages/profile_page.dart';
import 'package:libromate_app/modules/ranking/pages/ranking_page.dart';

void main() {
  // runApp(const MyApp());
  runApp(OnboardingPage());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white, // Mengatur warna latar belakang
      ),
      home: BottomNavigation(),
    );
  }
}

class BottomNavigation extends StatefulWidget {
  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  var currentIndex = 0;

  List<List<IconData>> listOfIcons = [
    [Icons.home_rounded, Icons.home_outlined],
    [Icons.book_rounded, Icons.book_outlined],
    [Icons.pie_chart_rounded, Icons.pie_chart_outline],
    [Icons.settings_rounded, Icons.settings_outlined]
  ];

  List<String> listOfLabels = ['Beranda', 'Buku', 'Peringkat', 'Profil'];

  final List<Widget> pages = [
    HomePage(),
    BookPage(),
    RankingPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(20),
        height: 68,
        decoration: BoxDecoration(
          color: primaryColor,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.15),
                blurRadius: 30,
                offset: Offset(0, 10)),
          ],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            listOfIcons.length,
            (index) => Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.fastLinearToSlowEaseIn,
                      margin: EdgeInsets.only(
                          bottom: index == currentIndex ? 8 : 0),
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(
                        color: index == currentIndex
                            ? Colors.white
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Icon(
                      index == currentIndex
                          ? listOfIcons[index][0]
                          : listOfIcons[index][1],
                      size: 25,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      listOfLabels[index],
                      style: whiteTextStyle.copyWith(fontSize: 10),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
