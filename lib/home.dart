import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text(
              "Dental App",
            )));
            body: Stack(
        children: [
          // Add other widgets here if needed
          Positioned(
            top: 10, // Adjust the value as needed to place it in the exact top-left position
            left: 10, // Adjust the value as needed to place it in the exact top-left position
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Color(0xff4c505b),
              child: IconButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.popAndPushNamed(context, 'login');
                },
                icon: Icon(
                  Icons.arrow_back, // Use arrow_back to point left
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
