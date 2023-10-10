import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:badges/badges.dart' as badges;

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFAFAFA),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0XFFFAFAFA),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              width: MediaQuery.of(context).size.width * 0.7,
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Search message...',
                  hintStyle: TextStyle(
                    color: Color(0XFFc1c1c1),
                  ),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0XFFc1c1c1),
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: IconButton(
                icon: const Icon(
                  Symbols.edit_square_sharp,
                  color: Color(0XFFc1c1c1),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: chatData.length,
        itemBuilder: (context, index) {
          final chat = chatData[index];
          final userProfilePhoto = chat['userProfilePhoto'];
          final userIsOnline = chat['userIsOnline'];
          final userName = chat['userName'];
          final lastMessageFromUser = chat['lastMessageFromUser'];
          final lastMessage = chat['lastMessage'];
          final lastMessageTime = chat['lastMessageTime'];

          return Container(
            padding: const EdgeInsets.all(
              8,
            ),
            margin: const EdgeInsets.fromLTRB(16, 20, 16, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
            ),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              leading: badges.Badge(
                badgeStyle: badges.BadgeStyle(
                  badgeColor: userIsOnline ? Colors.green : Colors.grey,
                ),
                position: badges.BadgePosition.bottomEnd(bottom: 1, end: 20),
                child: CircleAvatar(
                  radius: 42,
                  backgroundImage: NetworkImage(userProfilePhoto),
                ),
              ),
              title: Text(userName),
              subtitle: RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: lastMessageFromUser
                          ? const Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Icon(
                                Symbols.done_all_rounded,
                                size: 18,
                                color: Colors.grey,
                              ),
                            )
                          : Container(),
                    ),
                    TextSpan(
                      text: lastMessage,
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              trailing: Text(lastMessageTime),
              onTap: () {
                Navigator.pushNamed(context, '/chat');
              },
            ),
          );
        },
      ),
    );
  }

  final List<Map<String, dynamic>> chatData = [
    {
      'userProfilePhoto':
          'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1888&q=80',
      'userIsOnline': true,
      'userName': 'Shubham Bane',
      'lastMessage': '#100daysofcode',
      'lastMessageFromUser': true,
      'lastMessageTime': '9:00 AM',
    },
    {
      'userProfilePhoto':
          'https://images.unsplash.com/photo-1696416748833-0407ebea6047?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
      'userIsOnline': false,
      'userName': 'User 2',
      'lastMessage': 'Hi there!',
      'lastMessageFromUser': false,
      'lastMessageTime': '8:35 AM',
    },
    {
      'userProfilePhoto':
          'https://images.unsplash.com/photo-1696789990467-b62f42cad41f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
      'userIsOnline': true,
      'userName': 'Alice',
      'lastMessage': 'How are you doing?',
      'lastMessageFromUser': true,
      'lastMessageTime': '8:22 AM',
    },
    {
      'userProfilePhoto':
          'https://images.unsplash.com/photo-1696456544745-b9ae347d8ac8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4Mnx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
      'userIsOnline': false,
      'userName': 'Bob',
      'lastMessage': 'Let\'s meet up later.',
      'lastMessageFromUser': true,
      'lastMessageTime': '8:17 AM',
    },
    {
      'userProfilePhoto':
          'https://images.unsplash.com/photo-1696789990406-ae38ef0848d9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
      'userIsOnline': true,
      'userName': 'Charlie',
      'lastMessage': 'See you at the party!',
      'lastMessageFromUser': false,
      'lastMessageTime': '8:00 AM',
    },
    {
      'userProfilePhoto':
          'https://images.unsplash.com/photo-1682687982029-edb9aecf5f89?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2071&q=80',
      'userIsOnline': false,
      'userName': 'David',
      'lastMessage': 'What\'s up?',
      'lastMessageFromUser': false,
      'lastMessageTime': '7:35 AM',
    },
    {
      'userProfilePhoto':
          'https://images.unsplash.com/photo-1696451203476-7ee3bbfc882e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1OXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
      'userIsOnline': true,
      'userName': 'Eve',
      'lastMessage': 'Did you finish the project?',
      'lastMessageFromUser': true,
      'lastMessageTime': '7:02 AM',
    },
  ];
}
