import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  String username = '';
  String email = '';
  String number = '';
  String password = '';

  final key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
          child: Form(
              key: key,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: null,
                  ),
                  ListTile(
                    title: TextFormField(
                      onSaved: (value) {
                        username = value;
                      },
                      decoration: InputDecoration(
                        labelText: 'User Name',
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        prefixIcon: Icon(Icons.person),
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    title: TextFormField(
                      onSaved: (value) {
                        email = value;
                      },
                      decoration: InputDecoration(
                        labelText: 'Email ID',
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        prefixIcon: Icon(Icons.alternate_email),
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    title: TextFormField(
                      onSaved: (value) {
                        number = value;
                      },
                      decoration: InputDecoration(
                        labelText: 'Mobile No',
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        prefixIcon: Icon(Icons.call),
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    title: TextFormField(
                      onSaved: (value) {
                        password = value;
                      },
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        prefixIcon: Icon(Icons.lock),
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                      title: Container(
                    margin: EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      child: Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          'Register',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          onPrimary: Colors.white,
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35.0),
                          )),
                      onPressed: () {
                        this.key.currentState.save();
                      },
                    ),
                  ))
                ],
              ))),
    );
  }
}
