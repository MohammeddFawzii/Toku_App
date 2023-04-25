import 'package:flutter/material.dart';
import 'package:tuko/models/categoryModel.dart';
import 'package:tuko/viwes/colorsviwe.dart';
import 'package:tuko/viwes/familymembersviwe.dart';
import 'package:tuko/viwes/numbersviwe.dart';
import 'package:tuko/viwes/phrasesviwe.dart';
import 'package:tuko/widgets/categoryItem.dart';

class HomeViwe extends StatelessWidget {
  HomeViwe({
    super.key,
  });

  static const String id = "Home View";
  final List<CategoryModel> categoryItems = [
    CategoryModel(
        text: "Numbers",
        color: const Color(0xffF99333),
        image: "assets/images/CategoryImages/Numbers.jpg",
        distnation: NumbersViwe.id),
    CategoryModel(
        text: "Family Members",
        color: const Color(0xff537E2F),
        image: "assets/images/CategoryImages/Family.jpg",
        distnation: FamilyMembersViwe.id),
    CategoryModel(
        text: "Colors",
        color: const Color(0xff7C3E9F),
        image: "assets/images/CategoryImages/Colors.jpg",
        distnation: ColorsViwe.id),
    CategoryModel(
        text: "Phrases",
        color: const Color(0xff45A6C9),
        image: "assets/images/CategoryImages/Phrases.jpeg",
        distnation: PhrasesViwe.id),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Toku",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff492F27),
      ),
      body: ListView.builder(
        itemCount: categoryItems.length,
        itemBuilder: (context, index) {
          return CategoryItem(categoryModel: categoryItems[index]);
        },
      ),
    );
  }
}
