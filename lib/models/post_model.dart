import 'models.dart';

class Post {
  final User user;
  final String caption;
  final String timeAgo;
  final String? image;
  final int likes;
  final int comments;
  final int shares;

  const Post({
    required this.user,
    required this.caption,
    required this.timeAgo,
    required this.image,
    required this.likes,
    required this.comments,
    required this.shares,
  });
}
