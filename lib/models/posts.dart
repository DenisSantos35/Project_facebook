import 'package:project_facebook/models/models.dart';

class Posts {
  User user;
  String description;
  String timeAgo;
  String urlImage;
  int like;
  int comment;
  int sharing;

  Posts({
    required this.user,
    required this.description,
    required this.timeAgo,
    required this.urlImage,
    required this.like,
    required this.comment,
    required this.sharing,
  });
}
