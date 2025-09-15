import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  final List<String> settings = [
    "Language", "Offline data update", "Save user info"
  ];

  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: settings.map((setting) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50)),
                child: Text(setting, style: TextStyle(fontSize: 18)),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
