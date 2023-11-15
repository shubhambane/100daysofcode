import 'package:flutter/material.dart';
import '../../data/user_data.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        radius: 28,
        backgroundImage: NetworkImage(
          UserData.user.imageUrl,
        ),
      ),
      title: Text(
        UserData.user.name,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        UserData.user.location,
      ),
    );
  }
}
