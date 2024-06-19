// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class FlashOfferWidget extends StatefulWidget {
  Color color1;
  Color color2;
  IconData iconData;
  FlashOfferWidget(
      {super.key,
      required this.color1,
      required this.color2,
      required this.iconData});

  @override
  State<FlashOfferWidget> createState() => _FlashOfferWidgetState();
}

class _FlashOfferWidgetState extends State<FlashOfferWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 128,
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
            colors: [
              widget.color1,
              widget.color2,
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.food_bank),
                  Text(
                    "Flash Offer",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "We are here with the best deserts in town.",
                    style: TextStyle(fontSize: 10),
                  ),
                  Text("Order >"),
                ],
              ),
            ),
          ),
          Expanded(
              child: Icon(
            widget.iconData,
            size: 70,
          ))
        ],
      ),
    );
  }
}
