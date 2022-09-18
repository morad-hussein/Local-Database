import 'package:flutter/material.dart';


class TestScreen extends StatelessWidget {

  String name = "user name";

  int age = 0;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Screen'),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 30),
              ),
              Text(
                age.toString(),
                style: TextStyle(fontSize: 30),
              ),
              TextFormField(
                onSaved: (value) {
                  name = value.toString();
                },
                decoration: InputDecoration(
                  labelText: 'name',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                onSaved: (value) {
                  age = int.parse(value.toString());
                },
                decoration: InputDecoration(
                  labelText: 'age',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  saveData();
                },
                child: Text("save"),
              )
            ],
          ),
        ),
      ),
    );
  }

  saveData() {

  }

}
