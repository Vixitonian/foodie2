// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:foodie/screens/registration/welcome_screen.dart';
import 'package:foodie/widgets/title_desc_widget.dart';
import 'package:intro_slider/intro_slider.dart';

class IntroScreenDefault extends StatefulWidget {
  const IntroScreenDefault({super.key});

  @override
  State<IntroScreenDefault> createState() => IntroScreenDefaultState();
}

class IntroScreenDefaultState extends State<IntroScreenDefault> {
  List<ContentConfig> listContentConfig = [];

  @override
  void initState() {
    super.initState();

    listContentConfig.add(ContentConfig(
        title: "ERASER",
        pathImage: "assets/images/order_illustration.png",
        backgroundColor: Colors.white,
        widgetDescription: TitleDescWidget(
          title: "Nearby Restaurants",
          description:
              "You don't have to go far to find a good restaurant, we have provided all the restaurants that is near you",
        )));
    listContentConfig.add(
      ContentConfig(
          title: "PENCIL",
          pathImage: "assets/images/tracking_map.png",
          backgroundColor: Colors.white,
          widgetDescription: TitleDescWidget(
            title: "Select the Favorites Menu",
            description:
                "Now eat well, don't leave the house,You can choose your favorite food only with one click",
          )),
    );
    listContentConfig.add(
      ContentConfig(
          title: "RULER",
          pathImage: "assets/images/safe_food.png",
          backgroundColor: Colors.white,
          widgetDescription: TitleDescWidget(
            title: "Good food at a cheap price",
            description:
                "You can eat at expensive restaurants with affordable price",
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      key: UniqueKey(),
      isShowSkipBtn: false,
      indicatorConfig: IndicatorConfig(colorActiveIndicator: Colors.red),
      listContentConfig: listContentConfig,
      onDonePress: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
      },
      onSkipPress: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
      },
    );
  }
}
