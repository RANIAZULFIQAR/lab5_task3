import 'package:flutter/material.dart';

// First screen
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen ICE CREAM 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Hero widget around the local image (assets/ice.jpg)
            Hero(
              tag: 'hero-image',
              child: Image.asset(
                'assets/ice.jpg', // Corrected path
                width: 400,
                height: 400,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the second screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreen()),
                );
              },
              child: const Text('Go to other page'),
            ),
          ],
        ),
      ),
    );
  }
}

// Second screen
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NEW SCREEN'),
      ),
      body: Center(
        child: Hero(
          tag: 'hero-image',
          child: Image.asset(
            'assets/ice1.jpg', // Corrected path
            width: 300,
            height: 300,
          ),
        ),
      ),
    );
  }
}
