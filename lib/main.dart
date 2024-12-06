import 'package:flutter/material.dart';
import 'package:flutter_application_1/drawer.dart';

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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var description = 'This is The Description';
  TextEditingController _descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First Flutter'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: [
                  Image.asset('assets/code.jpg'),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    description,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: _descriptionController,
                    decoration: InputDecoration(
                        hintText: 'write a description',
                        labelText: 'Description',
                        border: OutlineInputBorder()),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          description = _descriptionController.text;
          setState(() {});
        },
        child: Icon(Icons.send),
      ),
      drawer: MyDrawer(),
    );
  }
}
