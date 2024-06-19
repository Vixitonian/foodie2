// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:foodie/widgets/flash_offer_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.location_pin,
              color: Colors.green,
            ),
            Text(
              'Agrabad 435, Chittagong',
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.account_circle),
          )
        ],
        bottom: PreferredSize(
            preferredSize: Size(100, 50),
            child: SizedBox(
                height: 45,
                width: MediaQuery.of(context).size.width * (75 / 100),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(109, 158, 158, 158)),
                          borderRadius: BorderRadius.circular(20)),
                      filled: true,
                      fillColor: Color.fromARGB(109, 158, 158, 158)),
                ))),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: CarouselSlider(
                options: CarouselOptions(
                    height: 120.0, autoPlay: false, reverse: false),
                items: [
                  FlashOfferWidget(
                      color1: Color(0xFFFF9F06),
                      color2: Color(0xFFFFE1B4),
                      iconData: Icons.fastfood_outlined),
                  FlashOfferWidget(
                      color1: Colors.green,
                      color2: const Color.fromARGB(255, 153, 239, 155),
                      iconData: Icons.ac_unit_rounded),
                ]),
          )
        ],
      ),
    );
  }
}
