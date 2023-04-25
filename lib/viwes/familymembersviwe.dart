import 'package:flutter/material.dart';
import 'package:tuko/models/fmemberModel.dart';
import 'package:tuko/widgets/fmemberitem.dart';

class FamilyMembersViwe extends StatelessWidget {
  FamilyMembersViwe({super.key});
  static const String id = "Family members View";

  final List<FMemberModel> familyMembers = [
    const FMemberModel(
        japText: "Chichioya",
        enText: "Father",
        audio: "sounds/family_members/father.wav",
        image: "assets/images/family_members/family_father.png"),
    const FMemberModel(
        japText: "Musume",
        audio: "sounds/family_members/daughter.wav",
        enText: "Daughter",
        image: "assets/images/family_members/family_daughter.png"),
    const FMemberModel(
        japText: "Ojīsan",
        audio: "sounds/family_members/grand_father.wav",
        enText: "Grand Father",
        image: "assets/images/family_members/family_grandfather.png"),
    const FMemberModel(
        japText: "Hahaoya",
        audio: "sounds/family_members/mother.wav",
        enText: "Mother",
        image: "assets/images/family_members/family_mother.png"),
    const FMemberModel(
        japText: "Sobo",
        audio: "sounds/family_members/grand_mother.wav",
        enText: "Grand Mother",
        image: "assets/images/family_members/family_grandmother.png"),
    const FMemberModel(
        japText: "Nisan",
        audio: "sounds/family_members/older_bother.wav",
        enText: "Older brother",
        image: "assets/images/family_members/family_older_brother.png"),
    const FMemberModel(
        japText: "Ani",
        audio: "sounds/family_members/older_sister.wav",
        enText: "Older sister",
        image: "assets/images/family_members/family_older_sister.png"),
    const FMemberModel(
        japText: "Musuko",
        audio: "sounds/family_members/son.wav",
        enText: "Son",
        image: "assets/images/family_members/family_son.png"),
    const FMemberModel(
        japText: "Otōto",
        audio: "sounds/family_members/younger_brohter.wav",
        enText: "Younger brother",
        image: "assets/images/family_members/family_younger_brother.png"),
    const FMemberModel(
        japText: "Imōto",
        audio: "sounds/family_members/younger_sister.wav",
        enText: "Younger sister",
        image: "assets/images/family_members/family_younger_sister.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Family Members",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff492F27),
      ),
      body: ListView.builder(
          itemCount: familyMembers.length,
          itemBuilder: (context, index) {
            return FamilyMemberItem(fMemberModel: familyMembers[index]);
          }),
    );
  }
}
