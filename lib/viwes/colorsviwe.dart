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
        image: "assets/images/colors/color_black.png"),
    const ColorsModel(
        japText: "Chairo",
        enText: "Brown",
        image: "assets/images/colors/color_brown.png"),
    const ColorsModel(
        japText: "Hokori ppoi kiiro",
        enText: "Dusty Yellow",
        image: "assets/images/colors/color_dusty_yellow.png"),
    const ColorsModel(
        japText: "Gure",
        enText: "Gray",
        image: "assets/images/colors/color_gray.png"),
    const ColorsModel(
        japText: "Midori",
        enText: "Green",
        image: "assets/images/colors/color_green.png"),
    const ColorsModel(
        japText: "Aka",
        enText: "Red",
        image: "assets/images/colors/color_red.png"),
    const ColorsModel(
        japText: "Shiroi",
        enText: "White",
        image: "assets/images/colors/color_white.png"),
    const ColorsModel(
        japText: "Kiiro",
        enText: "Yellow",
        image: "assets/images/colors/yellow.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
