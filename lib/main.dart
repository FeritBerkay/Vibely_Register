import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Register',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: VibelyBodyPage(),
    ),
  ));
}

class VibelyBodyPage extends StatefulWidget {
  const VibelyBodyPage({Key? key}) : super(key: key);

  @override
  _VibelyBodyPageState createState() => _VibelyBodyPageState();
}

class _VibelyBodyPageState extends State<VibelyBodyPage> {
  @override
  Widget build(BuildContext context) {
    return Form(
      //key: _formKey,
      child: Center(
        child: Container(
          width: 250,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 50),
              Center(
                child: Text(
                  'Vibely',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                ),
              ),
              Center(
                child: SizedBox(
                  height: 30.0,
                  width: 200.0,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Crush It Together',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 40),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your email',
                ),
              ),
              SizedBox(height: 15),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
              ),
              SizedBox(height: 25),
              TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.greenAccent),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                ),
                onPressed: () {
                  print('Success Register');
                },
                child: Center(
                  child: Text(
                    'Register',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text('Already Have an account? Sign in.'),
              ),
              SizedBox(height: 40),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () {
                  print('Success Register With Google');
                },
                child: Center(
                    child: Text(
                  'Sign In With Google',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                )),
              ),
              SizedBox(height: 10),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () {
                  print('Success Register With Github');
                },
                child: Center(
                    child: Text(
                  'Sign In With Github',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
              ),
              SizedBox(height: 10),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () {
                  print('Success Register With Facebook');
                },
                child: Center(
                    child: Text(
                  'Sign In With Facebook',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
