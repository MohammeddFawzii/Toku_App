import 'package:flutter/material.dart';
import 'package:tuko/viwes/colorsviwe.dart';
import 'package:tuko/viwes/familymembersviwe.dart';
import 'package:tuko/viwes/homeviwe.dart';
import 'package:tuko/viwes/numbersviwe.dart';
import 'package:tuko/viwes/phrasesviwe.dart';

void main() {
  runApp(const Toku());
}

class Toku extends StatefulWidget {
  const Toku({super.key});

  @override
  State<Toku> createState() => _TokuState();
}

class _TokuState extends State<Toku> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        HomeViwe.id: (context) => HomeViwe(),
        NumbersViwe.id: (context) => NumbersViwe(),
        FamilyMembersViwe.id: (context) => FamilyMembersViwe(),
        ColorsViwe.id: (context) => ColorsViwe(),
        PhrasesViwe.id: (context) => PhrasesViwe(),
      },
      initialRoute: HomeViwe.id,
    );
  }
}
