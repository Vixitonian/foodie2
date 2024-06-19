// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TitleDescWidget extends StatefulWidget {
  String title;
  String description;
  TitleDescWidget({super.key, required this.title, required this.description});

  @override
  State<TitleDescWidget> createState() => _TitleDescWidgetState();
}

class _TitleDescWidgetState extends State<TitleDescWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            widget.title,
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          widget.description,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
