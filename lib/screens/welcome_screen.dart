import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.pets, size: 100, color: Colors.green),
              SizedBox(height: 20),
              Text("PashuDoctor",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text("Smart Care for Your Cattle –\nEven Without Internet",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.grey[700])),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/language');
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50)),
                child: Text("Get Started"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
