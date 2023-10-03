import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  List<int> numbers = [];

  void onClicked() {
    setState(() {
      numbers.add(numbers.length);
    });
  }

  void onRefreshed() {
    setState(() {
      numbers = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Click count',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              for (var num in numbers) Text('$num'),
              IconButton(
                iconSize: 48,
                onPressed: onClicked,
                icon: const Icon(
                  Icons.add_box_rounded,
                ),
              ),
              IconButton(
                iconSize: 24,
                onPressed: onRefreshed,
                icon: const Icon(
                  Icons.refresh,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
