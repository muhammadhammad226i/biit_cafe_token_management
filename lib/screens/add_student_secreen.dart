import 'package:flutter/material.dart';

class AddStudentScreen extends StatefulWidget {
  @override
  _AddStudentScreenState createState() => _AddStudentScreenState();
}

class _AddStudentScreenState extends State<AddStudentScreen> {
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
        title: Text('Add Student'),
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
                decoration: InputDecoration(labelText: 'ARID No.'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter an ARID No.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _parentIdController,
                decoration: InputDecoration(labelText: 'Parent ID'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a Parent ID';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _balanceController,
                decoration: InputDecoration(labelText: 'Balance'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a balance';
                  }
                  return null;
                },
              ),
              CheckboxListTile(
                title: Text("Needy"),
                value: _isNeedy, onChanged: (v){
                  setState(() {
                    _isNeedy=v!;
                  });
                }),
              TextFormField(
                
obscureText: true,

                controller: null,
                decoration: InputDecoration(
                  
                  labelText: 'Password'),
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
