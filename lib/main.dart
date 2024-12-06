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
                  const TextField(
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
        onPressed: () {},
        child: Icon(Icons.send),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Bemin Dawoud'),
              accountEmail: Text('Bemin_dawoud@yahoo.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              subtitle: const Text('Bemin Dawoud'),
              trailing: const Icon(Icons.edit),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              subtitle: const Text('Bemin Dawoud'),
              trailing: const Icon(Icons.edit),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              subtitle: const Text('Bemin Dawoud'),
              trailing: const Icon(Icons.edit),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
