import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import '../../commons/components.dart';
import '../../model/home_post_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  List<StoryItem> storyList = [
    const StoryItem(
      name: 'John Doe',
      imageUrl:
          'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
    ),
    const StoryItem(
      name: 'Jane Smith',
      imageUrl:
          'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
      isLive: true,
    ),
    const StoryItem(
      name: 'Bob Johnson',
      imageUrl:
          'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
    ),
    const StoryItem(
      name: 'Jammy J',
      imageUrl:
          'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: const Icon(
          Symbols.grid_view_sharp,
          color: Colors.black,
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey.shade100,
            child: const Icon(
              Symbols.notifications_rounded,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: storyList.length,
                itemBuilder: (context, index) {
                  return storyList[index];
                },
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
                return Container(
                  margin: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                  padding: const EdgeInsets.all(14),
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade100,
                    image: DecorationImage(
                      image: NetworkImage(post.postMedia),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/profile');
                            },
                            child: GlassBg(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 3.0,
                                      vertical: 4,
                                    ),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      radius: 18,
                                      backgroundImage:
                                          NetworkImage(post.userProfilePhoto),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 6,
                                      right: 8,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        text: post.username,
                                        style: const TextStyle(
                                          color: Colors.white,
                                        ),
                                        children: [
                                          const WidgetSpan(
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                left: 5.0,
                                              ),
                                              child: Icon(
                                                Icons.verified,
                                                color: Colors.blue,
                                                size: 14,
                                              ),
                                            ),
                                          ),
                                          const TextSpan(text: '\n'),
                                          TextSpan(
                                            text: post.userId,
                                            style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const GlassBg(
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: Icon(Icons.more_vert, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: RichText(
                          text: TextSpan(
                            children: [
                              const WidgetSpan(
                                child: Icon(
                                  Symbols.favorite,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
                              TextSpan(
                                text: ' ${post.likesCount}',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              const WidgetSpan(child: SizedBox(width: 12)),
                              const WidgetSpan(
                                child: Icon(
                                  Symbols.chat_bubble,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
                              TextSpan(
                                text: ' ${post.commentsCount}',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              const WidgetSpan(child: SizedBox(width: 12)),
                              const WidgetSpan(
                                child: Icon(
                                  Symbols.send,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
                              TextSpan(
                                text: ' ${post.shareCount}',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            post.postCaption,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  final List<Post> posts = [
    Post(
      username: "Alana moesya",
      userId: "@alanamoesya",
      userProfilePhoto:
          "https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80",
      postMedia:
          'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80',
      likesCount: 1245,
      commentsCount: 173,
      shareCount: 229,
      postCaption:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. #100daysofcode #flutter #ui",
    ),
    Post(
      username: "Alana moesya",
      userId: "@alanamoesya",
      userProfilePhoto:
          "https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80",
      postMedia:
          "https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80",
      likesCount: 1245,
      commentsCount: 173,
      shareCount: 229,
      postCaption:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. #100daysofcode #flutter #ui",
    ),
  ];
}
