import 'package:flutter/material.dart';
import 'package:project_facebook/screens/home.dart';
import 'package:project_facebook/utils/palete_colors.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Faceook",
    theme: ThemeData(scaffoldBackgroundColor: PaleteColors.scaffold),
    home: Home(),
  ));
}
