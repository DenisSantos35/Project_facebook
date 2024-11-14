import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../utils/palete_colors.dart';

class ButtonCircle extends StatelessWidget {
  final IconData icone;
  final double iconeTamanho;
  final VoidCallback onPressed;

  ButtonCircle({
    super.key,
    required this.icone,
    required this.iconeTamanho,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: PaleteColors.primaryGray,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icone),
        iconSize: iconeTamanho,
        color: Colors.black,
      ),
    );
  }
}
