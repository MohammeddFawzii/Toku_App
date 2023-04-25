import 'package:flutter/material.dart';
import 'package:tuko/models/numberModel.dart';
import 'package:audioplayers/audioplayers.dart';

class NumberItem extends StatelessWidget {
  const NumberItem({
    super.key,
    required this.numberModel,
  });
  final NumberModel numberModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      color: const Color(0xffEF9134),
      child: Row(
        children: [
          Container(
            color: const Color(0xffFEF5DB),
            child: Image(image: AssetImage(numberModel.image)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "${numberModel.japText}\n${numberModel.enText}",
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
                onPressed: () {
                  final player = AudioPlayer();
                  player
                      .play(AssetSource(numberModel.audio));
                },
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
