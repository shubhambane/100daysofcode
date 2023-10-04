class Post {
  final String username;
  final String userProfilePhoto;
  final String userId;
  final String postMedia;
  final int likesCount;
  final int commentsCount;
  final int shareCount;
  final String postCaption;

  Post({
    required this.username,
    required this.userProfilePhoto,
    required this.userId,
    required this.postMedia,
    required this.likesCount,
    required this.commentsCount,
    required this.shareCount,
    required this.postCaption,
  });
}
