import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              const ListTile(
                title: Text(
                  'Hi Shubham,',
                  style: TextStyle(
                    color: Color(0XFF1719AA),
                  ),
                ),
                subtitle: Text(
                  "Thank you for logging your symptoms",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const AssignedDoctor(),
              SteakLogging(),
              TextButton.icon(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                onPressed: () {},
                icon: const Icon(
                  Symbols.arrow_back_ios_new,
                  size: 16,
                ),
                label: const Text(
                  'Go back to homepage',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SteakLogging extends StatelessWidget {
  SteakLogging({
    super.key,
  });
  final List<Map<String, dynamic>> items = [
    {
      'isUserLogged': true,
      'weekNumber': 1,
    },
    {
      'isUserLogged': true,
      'weekNumber': 2,
    },
    {
      'isUserLogged': false,
      'weekNumber': 3,
    },
    {
      'isUserLogged': true,
      'weekNumber': 4,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(
        vertical: 22,
        horizontal: 12,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0XFFF6F6F6),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          const ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              "🎉 You're on a\nsymptom logging roll!",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Text(
              'You logged 3 weeks this month.',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              const Text(
                'Oct 1-31',
                style: TextStyle(fontSize: 14),
              ),
              Expanded(
                child: Container(
                  height: 1,
                  color: Colors.black12,
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                ),
              ),
              const Text(
                '12 reports',
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: items.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final isUserLogged = items[index]['isUserLogged'] as bool;
                final weekNumber = items[index]['weekNumber'] as int;
                return Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 32,
                        backgroundColor: isUserLogged
                            ? const Color(0XFFAEE66D)
                            : Colors.white,
                        child: isUserLogged
                            ? const Icon(
                                Symbols.done,
                              )
                            : const Icon(
                                Symbols.close,
                                color: Colors.red,
                              ),
                      ),
                      const SizedBox(height: 6),
                      Text('W$weekNumber'),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class AssignedDoctor extends StatelessWidget {
  const AssignedDoctor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 22,
        horizontal: 14,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0XFFF6F6F6),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Logging your symptoms helps Dr.Kwan provide you with better care.',
                  style: TextStyle(fontSize: 12),
                ),
                const SizedBox(height: 20),
                TextButton.icon(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {},
                  icon: const Icon(
                    Symbols.chat_bubble_outline,
                    color: Color(0XFF1719AA),
                    size: 16,
                  ),
                  label: const Text(
                    'Send Messsage',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0XFF1719AA),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const CircleAvatar(
            radius: 42,
            backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1559839734-2b71ea197ec2?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            ),
          ),
        ],
      ),
    );
  }
}
