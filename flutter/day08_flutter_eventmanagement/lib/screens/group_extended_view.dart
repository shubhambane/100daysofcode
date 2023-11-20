import 'package:flutter/material.dart';

class GroupExtendedView extends StatefulWidget {
  const GroupExtendedView({super.key});

  @override
  State<GroupExtendedView> createState() => _GroupExtendedViewState();
}

class _GroupExtendedViewState extends State<GroupExtendedView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                const Spacer(),
                Container(
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
            SizedBox(
              height: 100,
              child: Expanded(
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 16),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey.shade200,
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1492684223066-81342ee5ff30?auto=format&fit=crop&q=80&w=1470&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '100daysofcode',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            height: 1.4,
                          ),
                        ),
                        Text(
                          'Design to code for the next\n100 days',
                          softWrap: true,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.location_on_outlined,
                                      size: 16,
                                      color: Colors.grey.shade500,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Mumbai',
                                    style: TextStyle(
                                      color: Colors.grey.shade500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16),
                            RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.group_outlined,
                                      size: 16,
                                      color: Colors.grey.shade500,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '100k',
                                    style: TextStyle(
                                      color: Colors.grey.shade500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Events',
              style: TextStyle(
                fontSize: 26,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.blue,
              labelColor: Colors.blue,
              controller: _tabController,
              tabs: const [
                Tab(text: 'Upcoming'),
                Tab(text: 'Draft'),
                Tab(text: 'Past'),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  MyEventList(),
                  const Center(child: Text('Tab 2 Content')),
                  const Center(child: Text('Tab 3 Content')),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 28,
          color: Colors.white,
        ),
      ),
    );
  }
}

class MyEventList extends StatelessWidget {
  final List<Map<String, String>> events = [
    {
      'eventName': 'Sample Event 1',
      'eventDescription': 'This is for the Sample Event 1.',
      'eventImage':
          'https://images.unsplash.com/photo-1492684223066-81342ee5ff30?auto=format&fit=crop&q=80&w=1470&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'eventLocation': 'Event Venue 1',
      'eventDate': 'October 24, 2023',
      'eventTime': '2:00 PM',
    },
    {
      'eventName': 'Sample Event 2',
      'eventDescription': 'This is for Sample Event 2.',
      'eventImage':
          'https://images.unsplash.com/photo-1492684223066-81342ee5ff30?auto=format&fit=crop&q=80&w=1470&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'eventLocation': 'Event Venue 2',
      'eventDate': 'November 5, 2023',
      'eventTime': '4:30 PM',
    },
    {
      'eventName': 'Sample Event 3',
      'eventDescription': 'This is for Sample Event 3.',
      'eventImage':
          'https://images.unsplash.com/photo-1492684223066-81342ee5ff30?auto=format&fit=crop&q=80&w=1470&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'eventLocation': 'Event Venue 3',
      'eventDate': 'November 10, 2023',
      'eventTime': '4:30 PM',
    },
    {
      'eventName': 'Sample Event 4',
      'eventDescription': 'This is for Sample Event 4.',
      'eventImage':
          'https://images.unsplash.com/photo-1492684223066-81342ee5ff30?auto=format&fit=crop&q=80&w=1470&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'eventLocation': 'Event Venue 4',
      'eventDate': 'November 15, 2023',
      'eventTime': '4:30 PM',
    }
  ];

  MyEventList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: events.length,
      itemBuilder: (context, index) {
        final event = events[index];
        return EventItem(
          eventName: event['eventName'] ?? '',
          eventDescription: event['eventDescription'] ?? '',
          eventImage: event['eventImage'] ?? '',
          eventLocation: event['eventLocation'] ?? '',
          eventDate: event['eventDate'] ?? '',
          eventTime: event['eventTime'] ?? '',
        );
      },
    );
  }
}

class EventItem extends StatelessWidget {
  final String eventName;
  final String eventDescription;
  final String eventImage;
  final String eventLocation;
  final String eventDate;
  final String eventTime;

  const EventItem({
    super.key,
    required this.eventName,
    required this.eventDescription,
    required this.eventImage,
    required this.eventLocation,
    required this.eventDate,
    required this.eventTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(
        top: 16,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.shade200,
                  image: DecorationImage(
                    image: NetworkImage(eventImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    eventName,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      height: 1.4,
                    ),
                  ),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    eventDescription,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.location_on_outlined,
                        size: 16,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    const WidgetSpan(
                      child: SizedBox(width: 4),
                    ),
                    TextSpan(
                      text: eventLocation,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.calendar_today_outlined,
                        size: 16,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    const WidgetSpan(
                      child: SizedBox(width: 4),
                    ),
                    TextSpan(
                      text: eventDate,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.access_time_outlined,
                        size: 16,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    const WidgetSpan(
                      child: SizedBox(width: 4),
                    ),
                    TextSpan(
                      text: eventTime,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
