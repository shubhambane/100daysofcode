import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFEFE),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFEFEFE),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Audio Sound',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 18.0),
              child: Text(
                'My Devices',
              ),
            ),
            MyDevices(),
          ],
        ),
      ),
    );
  }
}

class MyDevices extends StatelessWidget {
  MyDevices({
    super.key,
  });

  final List<Map<String, dynamic>> deviceList = [
    {
      'isConnected': true,
      'deviceName': 'Audio Q2',
      'deviceThumbnail': 'assets/media/headphones.png',
    },
    {
      'isConnected': false,
      'deviceName': 'Audio P3',
      'deviceThumbnail': 'assets/media/tws.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: deviceList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/device_view');
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 18),
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: deviceList[index]['isConnected']
                        ? const Color(0xFFF0F5F5)
                        : const Color(0xFFF3F3F3),
                    borderRadius: BorderRadius.circular(36),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        deviceList[index]['deviceThumbnail'],
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '${deviceList[index]['deviceName']}\n',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Colors.black,
                              ),
                            ),
                            const WidgetSpan(
                              child: SizedBox(height: 25),
                            ),
                            WidgetSpan(
                              child: deviceList[index]['isConnected']
                                  ? const Padding(
                                      padding: EdgeInsets.only(right: 5.0),
                                      child: Icon(
                                        Icons.check_circle,
                                        color: Colors.green,
                                        size: 14,
                                      ),
                                    )
                                  : const SizedBox(),
                            ),
                            TextSpan(
                              text: deviceList[index]['isConnected']
                                  ? 'Connected'
                                  : 'Disconnected',
                              style: const TextStyle(
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
          Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(36),
              color: const Color(0xFFF3F3F3),
            ),
            child: TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Colors.black,
              ),
              label: const Text(
                'Add Devices',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
