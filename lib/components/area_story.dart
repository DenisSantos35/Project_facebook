import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:project_facebook/components/perfil_image.dart';
import 'package:project_facebook/data/data.dart';
import 'package:project_facebook/models/models.dart';
import 'package:project_facebook/utils/palete_colors.dart';

class AreaStory extends StatelessWidget {
  final User user;
  final List<Story> storys;
  AreaStory({super.key, required this.user, required this.storys});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: ListView.builder(
          physics: AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          scrollDirection: Axis.horizontal,
          itemCount: storys.length + 1,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              Story storyUser =
                  Story(user: usuarioAtual, urlImage: usuarioAtual.urlImage);
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: CardStory(
                  addStory: true,
                  story: storyUser,
                ),
              );
            }
            Story story = storys[index - 1];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: CardStory(
                story: story,
              ),
            );
          }),
    );
  }
}

class CardStory extends StatelessWidget {
  final Story story;
  final addStory;
  CardStory({super.key, required this.story, this.addStory = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
            imageUrl: story.urlImage,
            height: double.infinity,
            width: 110,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: double.infinity,
          width: 110,
          decoration: BoxDecoration(
              gradient: PaleteColors.degradeStory,
              borderRadius: BorderRadius.circular(12)),
        ),
        Positioned(
          top: 8,
          left: 8,
          child: addStory
              ? Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    iconSize: 30,
                    color: PaleteColors.azulFacebook,
                  ),
                )
              : PerfilImage(urlImage: story.user.urlImage, isSee: story.isSee),
        ),
        Positioned(
          bottom: 8,
          left: 8,
          right: 8,
          child: Text(
            addStory ? "Criar Story" : story.user.name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
