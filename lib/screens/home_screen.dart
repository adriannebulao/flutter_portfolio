import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        Row(
          children: [Text("Top Bar")],
        ),
        Column(
          children: [
            Text("Hi, I am Adrianne Mykhel Bulao"),
            Text("A Back End Engineer."),
            Text("description"),
            Row(
              children: [
                Text("resume"),
                SizedBox(
                  width: 25,
                ),
                Text("github"),
                SizedBox(
                  width: 25,
                ),
                Text("linkedin")
              ],
            )
          ],
        ),
        Column(
          children: [
            Text("Projects"),
            Row(
              children: [Text("Project 1"), Text("Proejct 2"), Text("Text 3")],
            )
          ],
        ),
        Column(
          children: [
            Text("Skills"),
            Row(
              children: [Text("HTML"), Text("CSS"), Text("JavaScript")],
            )
          ],
        ),
        Column(
          children: [Text("Contact"), Text("email me")],
        ),
        Text("Created By Adrianne Bulao")
      ],
    ));
  }
}
