import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class DeviceView extends StatefulWidget {
  const DeviceView({super.key});

  @override
  State<DeviceView> createState() => _DeviceViewState();
}

class _DeviceViewState extends State<DeviceView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFEFE),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFEFEFE),
        elevation: 0,
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back_ios_new_outlined,
        ),
        title: const Text(
          'Audio Q2',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 36),
                padding: const EdgeInsets.symmetric(vertical: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36),
                  color: const Color(0xFFF0F5F5),
                ),
                child: Column(
                  children: [
                    RichText(
                      text: const TextSpan(
                        children: [
                          WidgetSpan(
                              child: Padding(
                            padding: EdgeInsets.only(right: 5.0),
                            child: Icon(
                              Icons.check_circle,
                              color: Colors.green,
                              size: 14,
                            ),
                          )),
                          TextSpan(
                            text: 'Connected',
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/media/headphones.png',
                      width: 300,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(36),
                        color: Colors.white,
                      ),
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Symbols.battery_horiz_075,
                          color: Colors.black,
                          size: 20,
                        ),
                        label: const Text(
                          '65%',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const DeviceActions(
                title: 'Mode',
                value: 'Live Mode',
              ),
              const DeviceActions(
                title: 'Equalizer',
                value: 'Custom',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DeviceActions extends StatelessWidget {
  const DeviceActions({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 2),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(36),
        color: const Color(0xFF080808),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 14,
            fontWeight: FontWeight.w100,
          ),
        ),
        subtitle: Text(
          value,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_outlined,
          size: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
