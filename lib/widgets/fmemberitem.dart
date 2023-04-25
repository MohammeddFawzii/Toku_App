import 'package:flutter/material.dart';
import 'package:tuko/models/fmemberModel.dart';
import 'package:audioplayers/audioplayers.dart';

class FamilyMemberItem extends StatelessWidget {
  const FamilyMemberItem({
    super.key,
    required this.fMemberModel,
  });
  final FMemberModel fMemberModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      color: const Color(0xff537E2F),
      child: Row(
        children: [
          Container(
            color: const Color(0xffFEF5DB),
            child: Image(image: AssetImage(fMemberModel.image)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "${fMemberModel.japText}\n${fMemberModel.enText}",
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
                  player.play(AssetSource(fMemberModel.audio));
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
