import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.description,
    required TextEditingController descriptionController,
  }) : _descriptionController = descriptionController;

  final String description;
  final TextEditingController _descriptionController;

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
