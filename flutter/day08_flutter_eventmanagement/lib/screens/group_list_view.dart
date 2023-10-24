import 'package:day08_flutter_eventmanagement/screens/group_extended_view.dart';
import 'package:flutter/material.dart';

class GroupListView extends StatefulWidget {
  const GroupListView({super.key});

  @override
  State<GroupListView> createState() => _GroupListViewState();
}

class _GroupListViewState extends State<GroupListView> {
  final List<Event> events = [
    Event(
      eventName: '100daysofcode',
      eventArt:
          'https://images.unsplash.com/photo-1492684223066-81342ee5ff30?auto=format&fit=crop&q=80&w=1470&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      eventTagLine: 'Shubham',
      membersJoined: '100k',
      isJoined: true,
    ),
    Event(
      eventName: 'Flutter',
      eventArt:
          'https://images.unsplash.com/photo-1501281668745-f7f57925c3b4?auto=format&fit=crop&q=80&w=1470&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      eventTagLine: 'Event 2 Tag Line',
      membersJoined: '75',
      isJoined: false,
    ),
    Event(
      eventName: 'Design',
      eventArt:
          'https://images.unsplash.com/photo-1517457373958-b7bdd4587205?auto=format&fit=crop&q=80&w=1469&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      eventTagLine: 'Event 3 Tag Line',
      membersJoined: '150',
      isJoined: false,
    ),
    Event(
      eventName: 'Some Event',
      eventArt: 'https://source.unsplash.com/random',
      eventTagLine: 'Event 4 Tag Line',
      membersJoined: '75',
      isJoined: false,
    ),
    Event(
      eventName: 'Event Five',
      eventArt: 'https://source.unsplash.com/random',
      eventTagLine: 'Event 5 Tag Line',
      membersJoined: '100M',
      isJoined: false,
    ),
    Event(
      eventName: 'Event Six',
      eventArt: 'https://source.unsplash.com/random',
      eventTagLine: 'Event 6 Tag Line',
      membersJoined: '1.3K',
      isJoined: false,
    ),
    Event(
      eventName: 'Event Seven',
      eventArt: 'https://source.unsplash.com/random',
      eventTagLine: 'Event 7 Tag Line',
      membersJoined: '2.5K',
      isJoined: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.grey.shade200,
            child: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
            ),
          ),
        ),
        title: const Text(
          'Groups',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            title: RichText(
              text: const TextSpan(
                text: 'Groups in ',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Abu Dhabi',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            subtitle: const Text('Join groups to attend their events'),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: events.length,
              itemBuilder: (context, index) {
                final event = events[index];
                return Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey.shade200,
                          image: DecorationImage(
                            image: NetworkImage(event.eventArt),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              event.eventName,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                height: 1.4,
                              ),
                            ),
                            Text(
                              event.eventTagLine,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade600,
                              ),
                            ),
                            Text(
                              '${event.membersJoined} Members Joined',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      event.isJoined
                          ? TextButton.icon(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const GroupExtendedView(),
                                  ),
                                );
                              },
                              icon: const Icon(
                                Icons.done,
                                color: Colors.green,
                              ),
                              label: const Text(
                                'Joined',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          : Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.blue.shade50,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Text(
                                'Join',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                    ],
                  ),
                  // child: ListTile(
                  //   minVerticalPadding: 0,
                  //   contentPadding: EdgeInsets.zero,
                  //   leading: Container(
                  //     height: 60,
                  //     width: 60,
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(8),
                  //       color: Colors.grey.shade200,
                  //       image: DecorationImage(
                  //         image: NetworkImage(event.eventArt),
                  //         fit: BoxFit.cover,
                  //       ),
                  //     ),
                  //   ),
                  //   isThreeLine: true,
                  //   title: RichText(
                  //     text: TextSpan(
                  //       text: event.eventName,
                  //       style: TextStyle(
                  //         color: Colors.black,
                  //         fontSize: 18,
                  //         height: 1.4,
                  //       ),
                  //       children: <TextSpan>[
                  //         TextSpan(
                  //           text: '\n${event.eventTagLine}',
                  //           style: TextStyle(
                  //             fontSize: 16,
                  //             color: Colors.grey.shade600,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  //   subtitle: Text(
                  //     '${event.membersJoined} Members Joined',
                  //     style: TextStyle(
                  //       color: Colors.grey.shade400,
                  //     ),
                  //   ),
                  //   trailing: event.isJoined
                  //       ? Icon(
                  //           Icons.check_circle,
                  //           color: Colors.green,
                  //         )
                  //       : Icon(
                  //           Icons.add_circle,
                  //           color: Colors.blue,
                  //         ),
                  // ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Event {
  final String eventName;
  final String eventArt;
  final String eventTagLine;
  final String membersJoined;
  final bool isJoined;

  Event({
    required this.eventArt,
    required this.eventTagLine,
    required this.membersJoined,
    required this.isJoined,
    required this.eventName,
  });
}
