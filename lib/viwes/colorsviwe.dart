import 'package:flutter/material.dart';
import 'package:tuko/models/colorsModel.dart';
import 'package:tuko/widgets/colorsItem.dart';

class ColorsViwe extends StatelessWidget {
  ColorsViwe({super.key});
  static const String id = "Colors View";

  final List<ColorsModel> colorsItems = [
    const ColorsModel(
        japText: "Burakku",
        enText: "Black",
        audio: "sounds/colors/black.wav",
        image: "assets/images/colors/color_black.png"),
    const ColorsModel(
        japText: "Chairo",
        enText: "Brown",
        audio: "sounds/colors/brown.wav",
        image: "assets/images/colors/color_brown.png"),
    const ColorsModel(
        japText: "Hokori ppoi kiiro",
        enText: "Dusty Yellow",
        audio: "sounds/colors/dusty_yellow.wav",
        image: "assets/images/colors/color_dusty_yellow.png"),
    const ColorsModel(
        japText: "Gure",
        enText: "Gray",
        audio: "assets/sounds/colors/gray.wav",
        image: "assets/images/colors/color_gray.png"),
    const ColorsModel(
        japText: "Midori",
        enText: "Green",
        audio: "sounds/colors/green.wav",
        image: "assets/images/colors/color_green.png"),
    const ColorsModel(
        japText: "Aka",
        enText: "Red",
        audio: "sounds/colors/red.wav",
        image: "assets/images/colors/color_red.png"),
    const ColorsModel(
        japText: "Shiroi",
        enText: "White",
        audio: "assets/sounds/colors/white.wav",
        image: "assets/images/colors/color_white.png"),
    const ColorsModel(
        japText: "Kiiro",
        enText: "Yellow",
        audio: "sounds/colors/yellow.wav",
        image: "assets/images/colors/yellow.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(221, 247, 245, 232),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Colors",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff492F27),
      ),
      body: ListView.builder(
        itemCount: colorsItems.length,
        itemBuilder: (context, index) {
          return ColorsItem(colorsModel: colorsItems[index]);
        },
      ),
    );
  }
}
