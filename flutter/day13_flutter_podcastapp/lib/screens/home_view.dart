import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../components/filters.dart';
import '../components/video_home.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 12.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?auto=format&fit=crop&q=80&w=1374&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            ),
          ),
        ),
        title: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'Welcome Back',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black38,
                ),
              ),
              TextSpan(
                text: '\nShubham Bane',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(
                Colors.grey[200],
              ),
            ),
            onPressed: () {},
            icon: const Icon(
              Symbols.notifications,
            ),
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Subscriptions',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              HorizontalAvatarList(),
              const InlineWrapped(),
              VideoList(),
            ],
          ),
        ),
      ),
    );
  }
}

class User {
  final String name;
  final String imageUrl;

  User({required this.name, required this.imageUrl});
}

class HorizontalAvatarList extends StatelessWidget {
  final List<User> users = [
    User(
      name: 'Bane',
      imageUrl:
          'https://images.unsplash.com/photo-1492037766660-2a56f9eb3fcb?auto=format&fit=crop&q=80&w=1470&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    User(
      name: 'Design',
      imageUrl:
          'https://images.unsplash.com/photo-1599999904186-6a3104b3c125?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Y2hhbm5lbCUyMGFydHxlbnwwfHwwfHx8MA%3D%3D',
    ),
    User(
      name: 'Flutter',
      imageUrl:
          'https://images.unsplash.com/photo-1460661419201-fd4cecdf8a8b?auto=format&fit=crop&q=80&w=1480&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    User(
      name: 'Code',
      imageUrl:
          'https://images.unsplash.com/photo-1579762715118-a6f1d4b934f1?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjF8fGNoYW5uZWwlMjBhcnR8ZW58MHx8MHx8fDA%3D',
    ),
    User(
      name: 'Coffee',
      imageUrl:
          'https://images.unsplash.com/photo-1642726197634-2a21f764220a?auto=format&fit=crop&q=80&w=1480&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    User(
      name: 'Happy',
      imageUrl:
          'https://images.unsplash.com/photo-1493612276216-ee3925520721?auto=format&fit=crop&q=80&w=1528&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemCount: users.length,
        itemExtent: 80,
        itemBuilder: (context, index) {
          final user = users[index];
          return UserAvatar(user: user);
        },
      ),
    );
  }
}

class UserAvatar extends StatelessWidget {
  final User user;

  const UserAvatar({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(user.imageUrl),
          ),
          const SizedBox(height: 4),
          Text(
            user.name,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
