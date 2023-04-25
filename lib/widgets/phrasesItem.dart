import 'package:flutter/material.dart';
import 'package:tuko/models/phrasesModel.dart';
import 'package:audioplayers/audioplayers.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({
    super.key,
    required this.phrasesModel,
  });
  final PhrasesModel phrasesModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      color: const Color(0xff45A6C9),
      child: Row(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Text(
                    "${phrasesModel.japText}\n${phrasesModel.enText}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 4),
            child: IconButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(phrasesModel.audio));
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
