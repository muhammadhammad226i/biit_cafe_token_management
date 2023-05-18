import 'package:flutter/material.dart';

class RestrictionScreen extends StatefulWidget {
  @override
  _RestrictionScreenState createState() => _RestrictionScreenState();
}

class _RestrictionScreenState extends State<RestrictionScreen> {
  // List of options for the dropdown
  final List<String> _options = ['No restrictions', 'Vegetarian', 'Vegan', 'Gluten-free'];

  // Variables to store the selected dropdown option and daily amount
  String _selectedOption = 'No restrictions';
  int _dailyAmount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restrictions'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Select your dietary restriction:'),
            DropdownButton(
              value: _selectedOption,
              onChanged: (value) {
                setState(() {
                  _selectedOption = value!;
                });
              },
              items: _options.map((option) {
                return DropdownMenuItem(
                  value: option,
                  child: Text(option),
                );
              }).toList(),
            ),
            SizedBox(height: 16),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter your daily amount',
              ),
              onChanged: (value) {
                setState(() {
                  _dailyAmount = int.parse(value);
                });
              },
            ),
            SizedBox(height: 16),
            Text('Restricted foods:'),
            Text('TODO: Display restricted foods here'),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // TODO: Navigate to the menu screen
                  },
                  child: Text('Go to menu'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // TODO: Apply restrictions
                  },
                  child: Text('Apply restrictions'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
