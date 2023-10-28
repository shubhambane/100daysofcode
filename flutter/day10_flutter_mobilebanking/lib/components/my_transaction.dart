// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class MyTransactions extends StatelessWidget {
  MyTransactions({super.key});
  final List<Transaction> transactions = [
    Transaction(
      name: 'John Doe',
      date: '28 Oct, 09:00 AM',
      amount: 100.00,
      isTransfer: false,
    ),
    Transaction(
      name: 'Alice Smith',
      date: '28 Oct, 09:00 AM',
      amount: 75.50,
      isTransfer: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade300,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Expanded(
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Transactions',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                'View all',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                final transaction = transactions[index];
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: transaction.isTransfer
                        ? Color(0xFF205865)
                        : Color(0xFFDEFC66),
                    child: Icon(
                      transaction.isTransfer
                          ? Symbols.north_east
                          : Symbols.south_west,
                      color:
                          transaction.isTransfer ? Colors.white : Colors.black,
                    ),
                  ),
                  title: Text(
                    transaction.name,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    transaction.date,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                    ),
                  ),
                  trailing: RichText(
                    textAlign: TextAlign.end,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: transaction.isTransfer ? '-\$' : '+\$',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: transaction.isTransfer
                                ? Colors.red
                                : Colors.green,
                          ),
                        ),
                        TextSpan(
                          text: transaction.amount.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: transaction.isTransfer
                                ? Colors.red
                                : Colors.green,
                          ),
                        ),
                        TextSpan(
                          text: transaction.isTransfer
                              ? '\nTransfer'
                              : '\nReceive',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black45,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Transaction {
  final String name;
  final String date;
  final double amount;
  final bool isTransfer;

  Transaction({
    required this.name,
    required this.date,
    required this.amount,
    required this.isTransfer,
  });
}
