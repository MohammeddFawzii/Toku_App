import 'package:flutter/material.dart';
import 'package:tuko/models/phrasesModel.dart';
import 'package:tuko/widgets/phrasesItem.dart';

class PhrasesViwe extends StatelessWidget {
  PhrasesViwe({super.key});
  static const String id = "Phrases View";

  final List<PhrasesModel> phrasessItems = [
    const PhrasesModel(
        japText: "Kédoku suru koto o wasurenaide kudasai",
        audio: "sounds/phrases/dont_forget_to_subscribe.wav",
        enText: "dont forget to subscribe"),
    const PhrasesModel(
        japText: "Watashi wa puroguramingu ga daisukidesu ",
        audio: "sounds/phrases/i_love_programming.wav",
        enText: "i love programming"),
    const PhrasesModel(
        japText: "Puroguramingu wa kantandesu ",
        audio: "sounds/phrases/programming_is_easy.wav",
        enText: "programming is easy"),
    const PhrasesModel(
        japText: "Doko ni iku no ? ",
        audio: "sounds/phrases/where_are_you_going.wav",
        enText: "where are you going ?"),
    const PhrasesModel(
        japText: "Namae wa'nandesu ka ? ",
        audio: "sounds/phrases/what_is_your_name.wav",
        enText: "What is your Name ?"),
    const PhrasesModel(
        japText: "W'atashi wa anime ga daisukidesu ",
        audio: "sounds/phrases/i_love_anime.wav",
        enText: "i love anime"),
    const PhrasesModel(
        japText: "Go kibunwa ikagadesu ka?",
        audio: "sounds/phrases/how_are_you_feeling.wav",
        enText: " how are you feeling?"),
    const PhrasesModel(
        japText: "Kim asu Re ?",
        audio: "sounds/phrases/are_you_coming.wav",
        enText: "are you coming?"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Phrases",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff492F27),
      ),
      body: ListView.builder(
        itemCount: phrasessItems.length,
        itemBuilder: (context, index) {
          return PhrasesItem(phrasesModel: phrasessItems[index]);
        },
      ),
    );
  }
}
