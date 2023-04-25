import 'package:flutter/material.dart';
import 'package:tuko/models/phrasesModel.dart';
import 'package:tuko/widgets/phrasesItem.dart';

class PhrasesViwe extends StatelessWidget {
  PhrasesViwe({super.key});
  static const String id = "Phrases View";

  final List<PhrasesModel> PhrasessItems = [
    const PhrasesModel(
        japText: "Kédoku suru koto o wasurenaide kudasai",
        enText: "dont forget to subscribe"),
    const PhrasesModel(
        japText: "Watashi wa puroguramingu ga daisukidesu ",
        enText: "i love programming"),
    const PhrasesModel(
        japText: "Puroguramingu wa kantandesu ", enText: "programming is easy"),
    const PhrasesModel(
        japText: "Doko ni iku no ? ", enText: "where are you going ?"),
    const PhrasesModel(
        japText: "Namae wa'nandesu ka ? ", enText: "What is your Name ?"),
    const PhrasesModel(
        japText: "W'atashi wa anime ga daisukidesu ", enText: "i love anime"),
    const PhrasesModel(
        japText: "Go kibunwa ikagadesu ka?", enText: " how are you feeling?"),
    const PhrasesModel(japText: "Kim asu Re ?", enText: "are you coming?"),
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
        itemCount: PhrasessItems.length,
        itemBuilder: (context, index) {
          return PhrasesItem(phrasesModel: PhrasessItems[index]);
        },
      ),
    );
  }
}
