import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:project_facebook/utils/palete_colors.dart';

class PerfilImage extends StatelessWidget {
  final String urlImage;
  final bool isSee;

  PerfilImage({super.key, required this.urlImage, required this.isSee});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: PaleteColors.azulFacebook,
      child: CircleAvatar(
        radius: isSee ? 20 : 17,
        backgroundImage: CachedNetworkImageProvider(urlImage),
        backgroundColor: PaleteColors.primaryGray,
      ),
    );
  }
}
