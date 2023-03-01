import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/counterprovider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Counter App"),
          backgroundColor: Colors.black,
          elevation: 0,
          centerTitle: true,
        ),
        body: Center(
          child: Consumer<CounterProvider>(
            builder: (context, value, child) => Text(
              "${value.i}",
              style: TextStyle(fontSize: 30, color: Colors.green),
            ),
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(60),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                FloatingActionButton(
                  onPressed: () {
                    Provider.of<CounterProvider>(context, listen: false)
                        .increment();
                  },
                  child: Icon(Icons.add),
                  backgroundColor: Colors.black,
                ),
                SizedBox(width: 5),
                FloatingActionButton(
                  onPressed: () {
                    Provider.of<CounterProvider>(context, listen: false)
                        .decrement();
                  },
                  child: Icon(Icons.minimize),
                  backgroundColor: Colors.black,
                ),
                SizedBox(width: 5),
                FloatingActionButton(
                  onPressed: () {
                    Provider.of<CounterProvider>(context, listen: false)
                        .multiple2();
                  },
                  child: Icon(Icons.filter_2),
                  backgroundColor: Colors.black,
                ),
                SizedBox(width: 5),
                FloatingActionButton(
                  onPressed: () {
                    Provider.of<CounterProvider>(context, listen: false).reset();
                  },
                  child: Icon(Icons.restart_alt),
                  backgroundColor: Colors.red,
                ),
                SizedBox(width: 5),
                FloatingActionButton(
                  onPressed: () {
                    Provider.of<CounterProvider>(context, listen: false)
                        .multiple3();
                  },
                  child: Icon(Icons.filter_3),
                  backgroundColor: Colors.black,
                ),
                SizedBox(width: 5),
                FloatingActionButton(
                  onPressed: () {
                    Provider.of<CounterProvider>(context, listen: false)
                        .multiple3();
                  },
                  child: Icon(
                    Icons.filter_4,
                  ),
                  backgroundColor: Colors.black,
                ),
                SizedBox(width: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
