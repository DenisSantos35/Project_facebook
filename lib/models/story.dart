import 'package:project_facebook/models/models.dart';

class Story {
  User user;
  String urlImage;
  bool isSee;

  Story({required this.user, required this.urlImage, this.isSee = false});
}
