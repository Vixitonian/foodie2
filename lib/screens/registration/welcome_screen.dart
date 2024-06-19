// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:foodie/screens/home_screen/home_nav_screen.dart';
import 'package:foodie/screens/registration/create_account_screen.dart';
import 'package:foodie/screens/registration/login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Image.asset('assets/images/order_success.png'),
          ),
          Spacer(),
          Text(
            "Welcome",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Before enjoying Foodmedia services\n Please register first",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 20),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => HomeNavScreen()));
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    fixedSize:
                        Size(MediaQuery.of(context).size.width - 100, 60),
                    backgroundColor: Color(0xff32B768)),
                child: Text(
                  'Create Account',
                  style: TextStyle(color: Colors.white),
                )),
          ),
          ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    showDragHandle: true,
                    builder: (context) {
                      return Container(
                          height: 550,
                          width: MediaQuery.of(context).size.width,
                          child: DefaultTabController(
                              length: 2,
                              child: Column(
                                children: [
                                  TabBar(tabs: [
                                    Text('Create Account'),
                                    Text('Login')
                                  ]),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    height: 400,
                                    child: TabBarView(children: [
                                      CreateAccountScreen(),
                                      LoginScreen()
                                    ]),
                                  )
                                ],
                              )));
                    });
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  fixedSize: Size(MediaQuery.of(context).size.width - 100, 60),
                  backgroundColor: Color(0xffD1FAE5)),
              child: Text(
                'Login',
                style: TextStyle(color: Color(0xff10B981)),
              )),
          Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 8),
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                        text:
                            'By logging in or registering, you have agreed to',
                        style: TextStyle(color: Colors.grey)),
                    TextSpan(
                      text: ' the Terms and Conditions ',
                      style: TextStyle(color: Color(0xff10B981)),
                    ),
                    TextSpan(
                        text: ' And ', style: TextStyle(color: Colors.grey)),
                    TextSpan(
                        text: 'Privacy Policy.',
                        style: TextStyle(color: Color(0xff10B981))),
                  ]))),
          Spacer(),
        ],
      ),
    ));
  }
}
