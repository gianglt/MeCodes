import 'package:flutter/material.dart';
import 'package:medrawer/first_home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: <String, WidgetBuilder>{
      '/': (context) => const HomePage(),
      '/first': (context) => const FirstHome(),
      '/secondary': (context) => const SecondaryHome(),
    },
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/first');
              },
              child: const Text('First Home'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/secondary');
              },
              child: const Text('Secondary Home'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondaryHome extends StatelessWidget {
  const SecondaryHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Secondary Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go Back'),
        ),
      ),
    );
  }
}
