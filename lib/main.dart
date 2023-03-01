import 'package:counter_app/screen/counter/provider/counterprovider.dart';
import 'package:counter_app/screen/counter/view/counterscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => CounterScreen(),
        },
      ),
    ),
  );
}
