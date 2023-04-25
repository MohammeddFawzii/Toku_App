import 'package:flutter/material.dart';
import 'package:tuko/models/colorsModel.dart';

class ColorsItem extends StatelessWidget {
  const ColorsItem({
    super.key,
    required this.colorsModel,
  });
  final ColorsModel colorsModel ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      color: const Color(0xff7C3E9F),
      child: Row(
        children: [
          Container(
            color: const Color(0xffFEF5DB),
            child: Image(image: AssetImage(colorsModel.image)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "${colorsModel.japText}\n${colorsModel.enText}",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                )),
          )
        ],
      ),
    );
  }
}
