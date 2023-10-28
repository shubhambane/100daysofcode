import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import '../../components/my_buttonbar.dart';
import '../../components/my_card_overview.dart';
import '../../components/my_moneymanagement.dart';
import '../../components/my_transaction.dart';

class DashboardTab extends StatefulWidget {
  const DashboardTab({super.key});

  @override
  State<DashboardTab> createState() => _DashboardTabState();
}

class _DashboardTabState extends State<DashboardTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Wave'),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade300,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.notifications_outlined,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: const Text(
                        'Your Card',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      trailing: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add,
                          color: Colors.black,
                          size: 16,
                        ),
                        label: const Text(
                          'Add Card',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: const Color(0xFFE9EEF2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    const MyBalanceWidget(),
                    const Padding(
                      padding: EdgeInsets.only(top: 14.0),
                      child: MyButtonBar(
                        fBtnIcon: Symbols.south_west,
                        fBtnText: 'Request',
                        fBtnColor: Color(0xFFDEFC66),
                        sBtnIcon: Symbols.north_east,
                        sBtnText: 'Transfer',
                        sBtnColor: Color(0xFF205865),
                      ),
                    ),
                  ],
                ),
              ),
              MyMoneyManagement(),
              MyTransactions(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyBalanceWidget extends StatelessWidget {
  const MyBalanceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade300,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.all(14),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MyCardOverView(
                  cardColor: Color(0xFF8C8CE4),
                  isCardSelected: true,
                ),
                MyCardOverView(
                  cardColor: Color(0xFF99C8D0),
                  isCardSelected: false,
                ),
                MyCardOverView(
                  cardColor: Color(0xFFA2D576),
                  isCardSelected: false,
                ),
              ],
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            title: Text(
              'Your Balance',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade600,
              ),
            ),
            subtitle: RichText(
              text: TextSpan(
                text: '40,500',
                style: const TextStyle(
                  fontSize: 36,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: '.80',
                    style: TextStyle(
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
            ),
            trailing: GestureDetector(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.visibility_outlined,
                    size: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
