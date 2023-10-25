import 'package:flutter/material.dart';
import 'package:medrawer/second_home.dart';

class FirstHome extends StatelessWidget {
  const FirstHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Home'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            ),
            ElevatedButton(
              onPressed: () {
                Route route =
                    MaterialPageRoute(builder: (context) => const SecondHome());
                Navigator.push(context, route);
              },
              child: const Text('Go Second Home'),
            ),
          ],
        ),
      ),
    );
  }
}
