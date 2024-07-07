import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planet_app/home_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  double _progress = 0.33;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                height: 500,
                width: 500,
                child: PageView(
                  controller: _pageController,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        width: 300,
                        height: 300,
                        child: Image.asset(
                          "images/1.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        width: 300,
                        height: 300,
                        child: Image.asset(
                          "images/2.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        width: 300,
                        height: 300,
                        child: Image.asset(
                          "images/4.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              "Jelajahi Alam \nSemesta!",
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w700,
                fontSize: 45,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Pelajari lebih lanjut tentang alam \nsemesta tempat kita semua tinggal.",
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 100,
              height: 100,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  SizedBox(
                      width: 100,
                      height: 100,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Color.fromARGB(255, 111, 60, 143),
                        value: _progress == 0.99 ? 1 : _progress,
                      )),
                  GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          _progress += 0.33;
                        },
                      );
                      if (_pageController.hasClients) {
                        _pageController.animateToPage(
                          _pageController.page!.toInt() + 1,
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                        );
                      }
                      if (_pageController.page!.toInt() == 2) {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (_) => HomePage()),
                            (route) => false);
                      }
                    },
                    child: Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.play_arrow_rounded,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
