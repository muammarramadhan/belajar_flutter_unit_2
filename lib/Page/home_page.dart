// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_const_literals_to_create_immutables

import 'package:belajar_flutter_unit_2/Components/best_agents_item.dart';
import 'package:belajar_flutter_unit_2/Components/circleItem.dart';
import 'package:belajar_flutter_unit_2/Components/cities.dart';
import 'package:belajar_flutter_unit_2/Components/staff_picks_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 233, 233),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedLabelStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: "PSR"),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(color: Colors.grey, fontFamily: "PSR"),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.orange,
              ),
              label: 'Discover'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: 'Favorites'),
          BottomNavigationBarItem(
              icon: Icon(Icons.tv_outlined), label: 'TV News'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined), label: 'Settings'),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //text title
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Estate",
                            style: GoogleFonts.poppins(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Best discovery ever",
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),

                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.notifications_outlined),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Text(
                        "Categories",
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  circleItem(
                      title: "Hutan",
                      icon: Image.asset(
                        "assets/images/fi_wind.png",
                        height: 25,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  circleItem(
                      title: "Toko",
                      icon: Image.asset(
                        "assets/images/fi_shopping-bag.png",
                        height: 25,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  circleItem(
                      title: "Gudang",
                      icon: Image.asset(
                        "assets/images/fi_truck.png",
                        height: 25,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  circleItem(
                      title: "Hujan",
                      icon: Image.asset(
                        "assets/images/fi_cloud-drizzle.png",
                        height: 25,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  circleItem(
                      title: "Office",
                      icon: Image.asset(
                        "assets/images/fi_briefcase.png",
                        height: 25,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  circleItem(
                      title: "Location",
                      icon: Icon(
                        Icons.location_city_outlined,
                        size: 25,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  circleItem(
                      title: "Help",
                      icon: Icon(
                        Icons.help_outline,
                        size: 25,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text(
                    "Staff Picks",
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                SizedBox(
                  width: 15,
                ),
                staffPicksItem(
                    gambar: Image.asset("assets/images/image_6.png"),
                    title: "Lagon Sky",
                    height: "412 sq ft.",
                    fee: "\$920"),
                SizedBox(
                  width: 15,
                ),
                staffPicksItem(
                    gambar: Image.asset("assets/images/image_6.png"),
                    title: "Inn Parapat",
                    height: "800 sq ft.",
                    fee: "\$559"),
                SizedBox(
                  width: 15,
                ),
                staffPicksItem(
                    gambar: Image.asset("assets/images/image_6.png"),
                    title: "Arman Village",
                    height: "0 sq ft.",
                    fee: "\$499"),
                SizedBox(
                  width: 15,
                ),
              ]),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text(
                    "Best Agents",
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  bestAgents(
                      gambar: Image.asset("assets/images/image_71.png"),
                      name: "Amar",
                      value: 190),
                  SizedBox(
                    width: 15,
                  ),
                  bestAgents(
                      gambar: Image.asset("assets/images/image_73.png"),
                      name: "Joko",
                      value: 123),
                  SizedBox(
                    width: 15,
                  ),
                  bestAgents(
                      gambar: Image.asset("assets/images/image_75.png"),
                      name: "Widodo",
                      value: 111),
                  SizedBox(
                    width: 15,
                  ),
                  bestAgents(
                      gambar: Image.asset("assets/images/image_71.png"),
                      name: "Bambang",
                      value: 450),
                  SizedBox(
                    width: 15,
                  ),
                  bestAgents(
                      gambar: Image.asset("assets/images/image_73.png"),
                      name: "Susilo",
                      value: 250),
                  SizedBox(
                    width: 15,
                  ),
                  bestAgents(
                      gambar: Image.asset("assets/images/image_75.png"),
                      name: "Yudhoyono",
                      value: 25),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Cities",
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        cities(
                            gambar: Image.asset("assets/images/image_8.png"),
                            title: "Aceh",
                            value: 194),
                        SizedBox(
                          height: 15,
                        ),
                        cities(
                            gambar: Image.asset("assets/images/image_9.png"),
                            title: "Medan",
                            value: 89400),
                        SizedBox(
                          height: 15,
                        ),
                        cities(
                            gambar: Image.asset("assets/images/image_10.png"),
                            title: "Palembang",
                            value: 184000),
                        SizedBox(
                          height: 15,
                        ),
                        cities(
                            gambar: Image.asset("assets/images/image_9.png"),
                            title: "Padang",
                            value: 8300),
                        SizedBox(
                          height: 15,
                        ),
                        cities(
                            gambar: Image.asset("assets/images/image_8.png"),
                            title: "Riau",
                            value: 55),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ]),
        ),
      ),
    );
  }
}
