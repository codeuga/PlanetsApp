import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:planet_app/detail.dart';
import 'package:planet_app/model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Menjelajahi",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 45,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Tata Surya",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                            color: Colors.white60,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Color.fromARGB(255, 111, 60, 143),
                          size: 35,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 675,
                padding: EdgeInsets.symmetric(horizontal: 0),
                child: Swiper(
                  itemCount: planets.length,
                  physics: BouncingScrollPhysics(),
                  itemHeight: 675,
                  itemWidth: double.infinity,
                  layout: SwiperLayout.TINDER,
                  pagination: SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                      activeSize: 12,
                      size: 8,
                      activeColor: Colors.white,
                      color: Colors.white24,
                    ),
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              planetInfo: planets[index],
                            ),
                          ),
                        );
                      },
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 100,
                              ),
                              Card(
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                color: Colors.white,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 35,
                                    vertical: 35,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 200,
                                      ),
                                      Text(
                                        planets[index].name,
                                        style: TextStyle(
                                          fontSize: 50,
                                          color:
                                              Color.fromARGB(255, 71, 69, 95),
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      Text(
                                        "Tata Surya",
                                        style: TextStyle(
                                          fontSize: 30,
                                          color:
                                              Color.fromARGB(255, 65, 76, 107),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Ketahui selengkapnya ",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Color.fromARGB(
                                                  255, 111, 60, 143),
                                            ),
                                          ),
                                          Icon(Icons.arrow_forward,
                                              color: Color.fromARGB(
                                                  255, 111, 60, 143))
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Hero(
                              tag: planets[index].id,
                              child: Image.asset(planets[index].iconImage)),
                          Positioned(
                            right: 40,
                            bottom: 120,
                            child: Text(
                              planets[index].id.toString(),
                              style: TextStyle(
                                fontSize: 260,
                                color: Color.fromARGB(255, 65, 76, 107)
                                    .withOpacity(0.1),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
