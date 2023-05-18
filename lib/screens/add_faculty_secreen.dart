import 'package:flutter/material.dart';

class AddFacultyScreen extends StatefulWidget {
  @override
  _AddFacultyScreenState createState() => _AddFacultyScreenState();
}

class _AddFacultyScreenState extends State<AddFacultyScreen> {
  final _nameController = TextEditingController();
  final _jobIdController = TextEditingController();
  final _passwordController = TextEditingController();
  final _balanceController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _jobIdController.dispose();
    _passwordController.dispose();
    _balanceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Add Faculty'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Name',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _jobIdController,
              decoration: InputDecoration(
                labelText: 'Job ID',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              obscureText: true,
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _balanceController,
              decoration: InputDecoration(
                labelText: 'Balance',
              ),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // Implement adding faculty logic here
              },
              child: Text('Add Faculty'),
            ),
          ],
        ),
      ),
    );
  }
}
