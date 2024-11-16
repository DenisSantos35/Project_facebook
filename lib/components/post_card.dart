import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:project_facebook/components/perfil_image.dart';
import 'package:project_facebook/models/models.dart';
import 'package:project_facebook/utils/palete_colors.dart';

class PostCard extends StatelessWidget {
  final Posts post;
  PostCard({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Container(color: Colors.red, width: 100, height: 100)
        ],
      ),
    );
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
