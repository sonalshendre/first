import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  TextFieldDemo({Key? key}) : super(key: key);

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  bool pass = false;
  String error = '';

  GlobalKey<FormState> key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: key,
              child: Column(
                children: [
                  TextFormField(
                    validator: (val) {
                      return val!.isEmpty ? 'Please Enter valid email' : '';
                    },
                    // textAlign: TextAlign.right,
                    // style: TextStyle(
                    //   color: Colors.blue,
                    //   fontSize: 20.0,
                    // ),
                    onChanged: (val) {
                      // setState(() {
                      //   error = val.isEmpty ? 'Please Enter valid email' : '';
                      // });
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      errorText: error,
                      label: Text(
                        'Email',
                        style: TextStyle(color: Colors.red),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      fillColor: Colors.black26,
                      filled: true,
                      prefixIcon: Icon(Icons.email, size: 30.0),
                      suffixIcon: IconButton(
                        icon:
                            Icon(pass ? Icons.visibility : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            pass = !pass;
                          });
                        },
                      ),
                    ),
                    obscureText: pass,
                    // cursorRadius: Radius.circular(5.0),
                    // cursorWidth: 20.0,
                    // readOnly: true,
                  ),
                  TextFormField(
                    maxLength: 10,
                    maxLines: 5,
                    validator: (val) {
                      return val!.length < 10 ? 'Please Enter valid Contact Number' : '';
                    },
                    // textAlign: TextAlign.right,
                    // style: TextStyle(
                    //   color: Colors.blue,
                    //   fontSize: 20.0,
                    // ),
                    onChanged: (val) {
                      // setState(() {
                      //   error = val.isEmpty ? 'Please Enter valid email' : '';
                      // });
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      errorText: error,
                      label: Text(
                        'Email',
                        style: TextStyle(color: Colors.red),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      fillColor: Colors.black26,
                      filled: true,
                      prefixIcon: Icon(Icons.email, size: 30.0),
                      suffixIcon: IconButton(
                        icon:
                            Icon(pass ? Icons.visibility : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            pass = !pass;
                          });
                        },
                      ),
                    ),
                    obscureText: pass,
                    // cursorRadius: Radius.circular(5.0),
                    // cursorWidth: 20.0,
                    // readOnly: true,
                  ),
                  MaterialButton(
                    color: Colors.green,
                    elevation: 20.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text('SUBMIT'),
                    onPressed: () {
                      key.currentState!.validate();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
