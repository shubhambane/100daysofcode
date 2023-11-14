import 'package:day17_flutter_realestate_app/presentation/pages/tabs/home_tab.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeTab(),
    const HomeTab(),
    const HomeTab(),
    const HomeTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              width: 1,
            ),
          ),
          child: TextFormField(
            decoration: const InputDecoration(
              border: InputBorder.none,
              icon: Icon(
                FeatherIcons.search,
              ),
              hintText: 'Search',
            ),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 12),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                width: 1,
              ),
            ),
            child: const Icon(
              FeatherIcons.grid,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black38,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.inbox),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.clipboard),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.user),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
