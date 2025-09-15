import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> features = [
    {"icon": Icons.search, "label": "Detect Disease"},
    {"icon": Icons.pets, "label": "Identify Breed"},
    {"icon": Icons.menu_book, "label": "Treatment Guide"},
    {"icon": Icons.phone, "label": "Vet Help"},
  ];

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.mic))],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("PashuDoctor",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                Navigator.pushNamed(context, '/settings');
              },
            )
          ],
        ),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(20),
        crossAxisCount: 2,
        children: features.map((feature) {
          return Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: InkWell(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(feature['icon'], size: 50, color: Colors.green),
                  SizedBox(height: 10),
                  Text(feature['label'],
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                ],
              ),
            ),
          );
        }).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.folder), label: "Records"),
          BottomNavigationBarItem(icon: Icon(Icons.help), label: "Help"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
        ],
        currentIndex: 0,
        onTap: (index) {},
      ),
    );
  }
}
