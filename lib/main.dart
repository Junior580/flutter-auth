import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Auth',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My Counter"),
          backgroundColor: Colors.deepPurple,
        ),
        body: const SizedBox(
          width: double.infinity,
          child: Counter(),
        ),
      ),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() {
    return _CounterState();
  }
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _asc() {
    setState(() {
      _counter += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(_counter.toString()),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: _asc,
          child: const Text('++'),
        )
      ],
    );
  }
}
