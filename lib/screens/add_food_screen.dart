

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddFoodPage extends StatefulWidget {
  @override
  _AddFoodPageState createState() => _AddFoodPageState();
}

class _AddFoodPageState extends State<AddFoodPage> {
  // Define variables to hold the input values
  String? name;
  String? type;
  String? price;
  File? imageFile;

  // Define a list of type options for the dropdown
  final List<String> typeOptions = ['drink', 'junk', 'dessert'];

  // Define a function to handle image selection
  Future<void> _selectImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      imageFile = File(pickedFile!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Food'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Add a text field for the food name
            TextField(
              decoration: InputDecoration(
                labelText: 'Name',
              ),
              onChanged: (value) {
                setState(() {
                  name = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            // Add a dropdown for the food type
            DropdownButtonFormField(
              value: type,
              items: typeOptions.map((type) {
                return DropdownMenuItem(
                  value: type,
                  child: Text(type),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  type = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'Type',
              ),
            ),
            SizedBox(height: 16.0),
            // Add a text field for the food price
            TextField(
              decoration: InputDecoration(
                labelText: 'Price',
              ),
              onChanged: (value) {
                setState(() {
                  price = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            // Add a button to select an image
            Row(
              children: [
                ElevatedButton(
                  onPressed: _selectImage,
                  child: Text('Add Image'),
                ),
                SizedBox(width: 16.0),
                // Add a container to display the selected image
                Container(
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: imageFile != null
                      ? SizedBox(
                        height: 60,
                        width: 200,
                        child: Image.file(
                            imageFile!,
                            fit: BoxFit.cover,
                          ),
                      )
                      : Center(
                          child: Text('No image selected'),
                        ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            // Add a button to submit the form
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: ElevatedButton(
                
                onPressed: () {
                  // TODO: Implement form submission
                },
                child: Text('Add'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
