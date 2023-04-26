import 'package:flutter/material.dart';
import 'package:tuko/models/numberModel.dart';
import '../widgets/numbersItem.dart';

class NumbersViwe extends StatelessWidget {
  NumbersViwe({super.key});
  static const String id = "Numbers View";

  final List<NumberModel> numbersItems = [
    const NumberModel(
        japText: "Ichi",
        enText: "One",
        image: "assets/images/numbers/number_one.png",
        audio: "sounds/numbers/number_one_sound.mp3"),
    const NumberModel(
        japText: "Ni",
        enText: "Two",
        image: "assets/images/numbers/number_two.png",
        audio: "sounds/numbers/number_two_sound.mp3"),
    const NumberModel(
      japText: "San",
      enText: "Three",
      image: "assets/images/numbers/number_three.png",
      audio: "sounds/numbers/number_three_sound.mp3",
    ),
    const NumberModel(
      japText: "Shi",
      enText: "Four",
      audio: "sounds/numbers/number_four_sound.mp3",
      image: "assets/images/numbers/number_four.png",
    ),
    const NumberModel(
        japText: "Go",
        enText: "Five",
        audio: "sounds/numbers/number_five_sound.mp3",
        image: "assets/images/numbers/number_five.png"),
    const NumberModel(
        japText: "Roku",
        enText: "Six",
        audio: "sounds/numbers/number_six_sound.mp3",
        image: "assets/images/numbers/number_six.png"),
    const NumberModel(
        japText: "Sebun",
        enText: "Seven",
        audio: "sounds/numbers/number_seven_sound.mp3",
        image: "assets/images/numbers/number_seven.png"),
    const NumberModel(
        japText: "Hachi",
        audio: "sounds/numbers/number_eight_sound.mp3",
        enText: "Eight",
        image: "assets/images/numbers/number_eight.png"),
    const NumberModel(
        japText: "Kyu",
        audio: "sounds/numbers/number_nine_sound.mp3",
        enText: "Nine",
        image: "assets/images/numbers/number_nine.png"),
    const NumberModel(
        japText: "Ju",
        audio: "sounds/numbers/number_ten_sound.mp3",
        enText: "Ten",
        image: "assets/images/numbers/number_ten.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Numbers",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff492F27),
      ),
      body: ListView.builder(
        itemCount: numbersItems.length,
        itemBuilder: (context, index) {
          return NumberItem(numberModel: numbersItems[index]);
        },
      ),
    );
  }
}
