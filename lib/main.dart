import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const HomePage(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      useMaterial3: false,
      primarySwatch: Colors.deepPurple,
    ),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My First Flutter'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.green,
                height: 100,
                width: double.infinity,
              ),
              Container(
                color: Colors.amber,
                height: 100,
                width: double.infinity,
              ),
              Container(
                color: Colors.red,
                height: 100,
                width: double.infinity,
              ),
            ],
          ),
        ));
  }
}