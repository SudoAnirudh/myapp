import 'package:flutter/material.dart';

class LanguageScreen extends StatelessWidget {
  final List<String> languages = [
    "English", "Hindi", "Malayalam", "Kannada", "Tamil"
  ];

  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Choose Language")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: languages.map((lang) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50)),
                child: Text(lang, style: TextStyle(fontSize: 18)),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
