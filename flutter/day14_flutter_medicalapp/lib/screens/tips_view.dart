import 'package:flutter/material.dart';

class TipsView extends StatefulWidget {
  const TipsView({super.key});

  @override
  State<TipsView> createState() => _TipsViewState();
}

class _TipsViewState extends State<TipsView> {
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
                  "You're not alone",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const DailyTip(),
              const Text(
                'A few tips to help you feel better',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const TipReminder(
                title: 'Record your pain',
                leading: Icons.edit_outlined,
              ),
              const TipReminder(
                title:
                    'Keep a record of how many times you use reserve medicines',
                leading: Icons.file_open_outlined,
              ),
              const TipReminder(
                title: "Don't stop taking your medicines",
                leading: Icons.edit_outlined,
              ),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    side: const BorderSide(
                      color: Colors.black12,
                      width: 0.5,
                    ),
                  ),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.refresh_outlined,
                  ),
                  label: const Text(
                    'Show more tips',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TipReminder extends StatelessWidget {
  const TipReminder({
    super.key,
    required this.title,
    required this.leading,
  });

  final String title;
  final IconData leading;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: const Color(0XFFF6F6F6),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Theme(
        data: ThemeData().copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          childrenPadding: EdgeInsets.zero,
          backgroundColor: const Color(0XFFF6F6F6),
          leading: Icon(
            leading,
            color: const Color(0XFF1719AA),
            size: 20,
          ),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0XFF1719AA),
            ),
          ),
          children: const [
            ListTile(
              title: Text('Day14 of 100daysofcode by Shubham Bane'),
            ),
          ],
        ),
      ),
    );
  }
}

class DailyTip extends StatelessWidget {
  const DailyTip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/home');
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 20, top: 5),
        padding: const EdgeInsets.symmetric(
          vertical: 22,
          horizontal: 14,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0XFFF6F6F6),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: RichText(
                text: const TextSpan(
                  text: 'A Quarter ',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          'of kidney cancer patients report abdominal pain during their treatment',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 60),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Abdominal Pain'),
                Text('Fatigue'),
              ],
            ),
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.only(right: 100),
                  width: double.infinity,
                  height: 8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 8,
                    decoration: BoxDecoration(
                      color: const Color(0XFFF8D347),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
