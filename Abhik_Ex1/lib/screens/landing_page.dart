import 'package:flutter/material.dart';
import 'home_page.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.electrical_services, size: 120, color: Colors.white),
            SizedBox(height: 30),
            Text("Welcome to ElectroStore",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text("Gadgets for modern living.",
                style: TextStyle(color: Colors.white60, fontSize: 16)),
            SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 14),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
              ),
              child: Text("Get Started", style: TextStyle(fontSize: 16)),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage())),
            ),
          ],
        ),
      ),
    );
  }
}
