import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:project_facebook/components/perfil_image.dart';
import 'package:project_facebook/models/models.dart';
import 'package:project_facebook/utils/palete_colors.dart';

class PostCard extends StatelessWidget {
  final Posts post;
  PostCard({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          //cabeçalho
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //cabelçalho
                PostHeader(
                  post: post,
                ),

                //descrição
                Text(post.description)
              ],
            ),
          ),
          //imagem postagem
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: CachedNetworkImage(
              imageUrl: post.urlImage,
              fit: BoxFit.cover,
            ),
          ),
          //estatistica da postagem
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: PostStatistic(post: post),
          ),
        ],
      ),
    );
  }
}

class PostStatistic extends StatelessWidget {
  final Posts post;
  const PostStatistic({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: PaleteColors.azulFacebook, shape: BoxShape.circle),
              child: Icon(
                Icons.thumb_up,
                size: 10,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 4,
            ),
            Expanded(
              child: Text(
                "${post.like}",
                style: TextStyle(color: Colors.grey.shade700),
              ),
            ),
            Text(
              "comentários ${post.comment}",
              style: TextStyle(color: Colors.grey.shade700),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "compartilhamentos ${post.sharing}",
              style: TextStyle(color: Colors.grey.shade700),
            ),
          ],
        ),
        Divider(
          thickness: 1.2,
        ),
        Row(
          children: [
            PostButton(
                icon: Icon(
                  LineIcons.thumbsUpAlt,
                  color: Colors.grey.shade700,
                ),
                text: "Curtir",
                onTap: () {}),
            PostButton(
                icon: Icon(
                  LineIcons.alternateCommentAlt,
                  color: Colors.grey.shade700,
                ),
                text: "Comentar",
                onTap: () {}),
            PostButton(
                icon: Icon(
                  LineIcons.share,
                  color: Colors.grey.shade700,
                ),
                text: "Compartilhar",
                onTap: () {}),
          ],
        )
      ],
    );
  }
}

class PostButton extends StatelessWidget {
  final Icon icon;
  final String text;
  final VoidCallback onTap;
  const PostButton(
      {super.key, required this.icon, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Material(
      child: InkWell(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 4),
          child: Row(
            children: [
              icon,
              SizedBox(
                width: 4,
              ),
              Text(
                text,
                style: TextStyle(
                    color: Colors.grey.shade700, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class PostHeader extends StatelessWidget {
  final Posts post;

  const PostHeader({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //imagem perfil
        PerfilImage(urlImage: post.urlImage, isSee: true),
        SizedBox(
          width: 8,
        ),

        //informações do usuário
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post.user.name,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    "${post.timeAgo} - ",
                  ),
                  Icon(
                    Icons.public,
                    size: 12,
                    color: Colors.grey.shade600,
                  ),
                ],
              )
            ],
          ),
        ),

        //informações do usuário
        IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
      ],
    );
  }
}
