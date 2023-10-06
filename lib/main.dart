import 'package:color_changer/helper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Main());
}

/// Main class
class Main extends StatelessWidget {
  /// Main constructor
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

/// Start page
class HomePage extends StatefulWidget {
  /// HomePage constructor
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _randomColor = getRandomColor();

  void _changeColor() {
    setState(() {
      _randomColor = getRandomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: _changeColor,
        child: ColoredBox(
          color: Color(_randomColor).withOpacity(1.0),
          child: Center(
            child: Text(
              'Hello there',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
        ),
      ),
    );
  }
}
