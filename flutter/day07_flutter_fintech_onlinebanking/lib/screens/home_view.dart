import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<Map<String, dynamic>> itemList = [
    {
      'icon': Icons.credit_card_outlined,
      'title': 'Paypal Deposit',
      'date': '21 Oct 2023',
      'amount': 15.00,
    },
    {
      'icon': Icons.shopping_cart_outlined,
      'title': 'Grossery store',
      'date': '21 Oct 2023',
      'amount': 82.53,
    },
    {
      'icon': Icons.local_atm_outlined,
      'title': 'ATM withdrawal',
      'date': '20 Oct 2023',
      'amount': 100.00,
    },
    {
      'icon': Icons.coffee_outlined,
      'title': 'Coffee',
      'date': '20 Oct 2023',
      'amount': 12.00,
    },
    {
      'icon': Icons.electric_bolt_outlined,
      'title': 'Electricity bills',
      'date': '17 Oct 2023',
      'amount': 20.00,
    },
    {
      'icon': Icons.water_drop_outlined,
      'title': 'Water bills',
      'date': '17 Oct 2023',
      'amount': 20.00,
    },
    {
      'icon': Icons.home_outlined,
      'title': 'Rent payment',
      'date': '15 Oct 2023',
      'amount': 100.00,
    },
    {
      'icon': Icons.local_hospital_outlined,
      'title': 'Medical',
      'date': '15 Oct 2023',
      'amount': 80.00,
    },
    {
      'icon': Icons.school_outlined,
      'title': 'Education',
      'date': '15 Oct 2023',
      'amount': 200.00,
    },
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F3F5),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF1F3F5),
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/chat_view');
          },
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              maxRadius: 14,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.star,
              ),
            ),
          ),
        ),
        title: const Text(
          'Home',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.notifications,
            ),
          ),
          SizedBox(width: 12),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                'Latest Transactions',
              ),
              trailing: IconButton(
                icon: const Icon(
                  Icons.sort,
                ),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: itemList.length,
                itemBuilder: (context, index) {
                  final item = itemList[index];
                  return Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 4,
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 12,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: CircleAvatar(
                        backgroundColor: const Color(0xFFF1F3F5),
                        child: Icon(
                          item['icon'],
                        ),
                      ),
                      title: Text(
                        item['title'],
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text('Date: ${item['date']}'),
                      trailing: RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: '-\$${item['amount']}\n',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                            const TextSpan(
                              text: 'Trasnfer',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // subtitle: Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Text('Amount: \$${item['amount']}'),
                      //   ],
                      // ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedFontSize: 14,
        selectedFontSize: 14,
        selectedItemColor: const Color(0xFF15616D),
        iconSize: 22,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.credit_card,
            ),
            label: 'Cards',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 24,
              backgroundColor: Color(0xFF15616D),
              child: Icon(
                Icons.scanner_outlined,
                color: Colors.white,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_graph),
            label: 'Stocks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
