import 'package:empat_flutter_week_1/data/counter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Counter _counter = Counter(
    firstCounter: 1,
    secondCounter: 0,
  );

  void _incrementFirstCounter() {
    setState(() {
      _counter.firstCounter = ++_counter.firstCounter;
    });
    print(_counter.firstCounter);
  }

  void _incrementSecondCounter() {
    setState(() {
      _counter.secondCounter = ++_counter.secondCounter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dmitry Prudnyk',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black87,
      ),
      backgroundColor: const Color.fromRGBO(217, 217, 217, 1),
      body: _buildContent(),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(_counter.firstCounter.toString()),
              Text(_counter.secondCounter.toString()),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                onPressed: _incrementFirstCounter,
                icon: const Icon(Icons.add),
                color: Colors.white70,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black87),
                ),
              ),
              IconButton(
                onPressed: _incrementSecondCounter,
                icon: const Icon(Icons.add),
                color: Colors.black87,
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
