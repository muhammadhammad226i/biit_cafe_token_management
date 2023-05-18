import 'package:flutter/material.dart';

class AddParentScreen extends StatefulWidget {
  @override
  _AddStudentScreenState createState() => _AddStudentScreenState();
}

class _AddStudentScreenState extends State<AddParentScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _isNeedy = false;

  TextEditingController _nameController = TextEditingController();
  TextEditingController _aridNoController = TextEditingController();
  TextEditingController _parentIdController = TextEditingController();
  TextEditingController _balanceController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Parent'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _aridNoController,
                decoration: InputDecoration(labelText: 'Parent ID'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter an parent ID.';
                  }
                  return null;
                },
              ),
              
            
              TextFormField(
                obscureText: true,
                controller: _passwordController,
                decoration: InputDecoration(labelText: 'Password'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // TODO: add student to database
                      Navigator.pop(context);
                    }
                  },
                  child: Text('Add'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
