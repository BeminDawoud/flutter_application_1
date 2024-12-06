import 'package:flutter/material.dart';
import '../drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var url = 'https://fakestoreapi.com/products';
  var data;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First Flutter'),
      ),
      body: data != null
          ? ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(data[index]["title"]),
                  subtitle: Text('ID: ${data[index]["id"]}'),
                  leading: SizedBox(
                    height: 35,
                    width: 35,
                    child: Image(
                      image: NetworkImage(data[index]["image"]),
                    ),
                  ),
                );
              })
          : const Center(child: CircularProgressIndicator()),
      drawer: MyDrawer(),
    );
  }
}
