import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ssgc/view/metres.dart';

class NewInspection extends StatefulWidget {
  const NewInspection({super.key});

  @override
  State<NewInspection> createState() => _NewInspectionState();
}

final _formKey = GlobalKey<FormState>();
String? _name;
String? inspectionID;
String? Description;

class _NewInspectionState extends State<NewInspection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('New Inspection'),
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Add new inspection details',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      TextFormField(
                        decoration:
                            InputDecoration(labelText: 'Inspection Point Name'),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Inspection Point ID';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _name = value;
                        },
                      ),
                      TextFormField(
                        decoration:
                            InputDecoration(labelText: 'Inspection Point ID'),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter inspection point ID';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          inspectionID = value;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Description'),
                        obscureText: true,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Description';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          Description = value;
                        },
                      ),
                      SizedBox(height: 16.0),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState?.save();
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MeterScreen(),
                                ));
                          }
                        },
                        child: Text('Submit'),
                      ),
                    ],
                  )),
            ),
          )
        ]));
  }
}
