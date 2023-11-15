class User {
  final String name;
  final String location;
  final String imageUrl;
  final int followCount;
  final int followersCount;
  final double startWeight;
  final double goal;
  final double dailyCal;

  User({
    required this.name,
    required this.location,
    required this.imageUrl,
    required this.followCount,
    required this.followersCount,
    required this.startWeight,
    required this.goal,
    required this.dailyCal,
  });
}
