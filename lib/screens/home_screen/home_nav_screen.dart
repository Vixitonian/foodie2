// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:foodie/screens/home_screen/booking_screen.dart';
import 'package:foodie/screens/home_screen/home_screen.dart';
import 'package:foodie/screens/home_screen/profile_screen.dart';

class HomeNavScreen extends StatefulWidget {
  const HomeNavScreen({super.key});

  @override
  State<HomeNavScreen> createState() => _HomeNavScreenState();
}

class _HomeNavScreenState extends State<HomeNavScreen> {
  int index = 0;
  List<Widget> pages = [HomeScreen(), BookingScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (position) {
            print(position);
            setState(() {
              index = position;
            });
          },
          currentIndex: index,
          selectedItemColor: Colors.green,
          selectedIconTheme: IconThemeData(color: Colors.green, size: 45),
          unselectedIconTheme: IconThemeData(size: 30),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_month,
                ),
                label: "Booking"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
          ]),
      body: pages[index],
    );
  }
}
