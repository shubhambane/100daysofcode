import 'package:flutter/material.dart';
import '../models/meeting.dart';
import '../services/meeting_service.dart';
import '../widgets/meeting_list_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String userName = 'Shubham Bane';
  final MeetingService meetingService = MeetingService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Meeting>>(
      future: meetingService.fetchMeetings(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
              body: Center(child: CircularProgressIndicator()));
        } else if (snapshot.hasError) {
          return const Scaffold(
              body: Center(child: Text('Error fetching data')));
        } else {
          final meetings = snapshot.data ?? [];
          return Scaffold(
            backgroundColor: const Color(0XFF18181B),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12, 72, 12, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 36,
                          backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1531384441138-2736e62e0919?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Color(0XFF212124),
                          radius: 36,
                          child: Icon(
                            Icons.settings,
                            color: Color(0xFF525255),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 24,
                        bottom: 32,
                      ),
                      child: RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          children: [
                            const TextSpan(
                              text: 'Hello,\n',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 32,
                              ),
                            ),
                            TextSpan(
                              text: userName,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 34,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: const Text(
                        'Upcoming',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                      ),
                      trailing: Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.chevron_left,
                            color: Colors.white,
                          ),
                          label: const Text(
                            '5',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    meetings.isNotEmpty
                        ? MeetingWidget(meetings: meetings)
                        : const Text('No meetings available'),
                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
