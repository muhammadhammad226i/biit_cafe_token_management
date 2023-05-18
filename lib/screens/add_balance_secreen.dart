


import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';


class AddBalanceScreen extends StatefulWidget {
  @override
  _AddBalanceScreenState createState() => _AddBalanceScreenState();
}

class _AddBalanceScreenState extends State<AddBalanceScreen> {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _balanceController = TextEditingController();
  
  get widht => null;
  
  get height => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Balance'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _idController,
              decoration: InputDecoration(
                labelText: 'ID',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _balanceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Balance',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 32),
           
    
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: ElevatedButton(

                 style: ElevatedButton.styleFrom(fixedSize: Size(1, 1)),
                onPressed: () {
                  // Do something with the ID and balance values here
                },
                child: Text('Add Balance'),
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}


