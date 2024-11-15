import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:project_facebook/models/user.dart';
import 'package:project_facebook/utils/palete_colors.dart';

class CreatePostArea extends StatelessWidget {
  final User user;
  CreatePostArea({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                  radius: 20,
                  backgroundColor: PaleteColors.primaryGray,
                  backgroundImage: CachedNetworkImageProvider(user.urlImage)),
              const SizedBox(
                width: 8,
              ),
              const Expanded(
                  child: TextField(
                decoration: InputDecoration.collapsed(
                    hintText: "No que você está pensando"),
              )),
            ],
          ),
          const Divider(
            height: 40,
            thickness: 0.5,
          ),
          Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  label: const Text(
                    "Ao vivo",
                    style: TextStyle(color: Colors.black),
                  ),
                  icon: const Icon(
                    Icons.videocam,
                    color: Colors.red,
                  ),
                ),
                VerticalDivider(
                  width: 8,
                ),
                TextButton.icon(
                  onPressed: () {},
                  label: const Text(
                    "Foto",
                    style: TextStyle(color: Colors.black),
                  ),
                  icon: const Icon(
                    Icons.photo_library,
                    color: Colors.green,
                  ),
                ),
                VerticalDivider(
                  width: 8,
                ),
                TextButton.icon(
                  onPressed: () {},
                  label: const Text(
                    "Sala",
                    style: TextStyle(color: Colors.black),
                  ),
                  icon: const Icon(
                    Icons.video_call,
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
