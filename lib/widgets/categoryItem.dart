import 'package:flutter/material.dart';
import 'package:tuko/models/categoryModel.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.categoryModel,
  });

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, categoryModel.distnation);
      },
      child: Container(
        height: 220,
        color: categoryModel.color,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  categoryModel.text,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              height: 165,
              width: 230,
              color: Colors.white,
              child: SizedBox(
                height: 160,
                width: 250,
                child: Image(image: AssetImage(categoryModel.image)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
