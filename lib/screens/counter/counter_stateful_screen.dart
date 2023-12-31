// ignore_for_file: prefer_final_fields, unused_element

import 'package:flutter/material.dart';

class CounterStatefulScreen extends StatefulWidget {
  const CounterStatefulScreen({super.key});

  @override
  State<CounterStatefulScreen> createState() => _CounterStatefulScreenState();
}

class _CounterStatefulScreenState extends State<CounterStatefulScreen> {
  int _counter = 0;

  void _counterUp() {
    setState(() {
      _counter++;
    });
  }

  void _counterDown() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful ${DateTime.now().microsecondsSinceEpoch}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: _counterUp,
              icon: const Icon(
                Icons.add_circle_outline,
                color: Colors.blue,
              ),
            ),
            Text(
              _counter.toString(),
              style: const TextStyle(fontSize: 120),
            ),
            IconButton(
              onPressed: _counterDown,
              icon: const Icon(
                Icons.remove_circle_outline,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 100,),
            Text(
              'Open at : ${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}',
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              'Timestamp : ${DateTime.now().microsecondsSinceEpoch.toString()}',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
