import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          title: Text('Image-task'),
        ),
        
        body:
        SafeArea(
          child: Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Login',
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.black
                    ),
                  ),
                  SizedBox(height: 30),

                  CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('assets/goku2.jpg'),
                  ),
                  SizedBox(height: 30),

                  Container(
                    margin: EdgeInsetsDirectional.all(30),
                    child: TextFormField(
                      cursorColor: Colors.deepPurpleAccent,
                      decoration: InputDecoration(hintText: 'Enter Number', border: OutlineInputBorder(), focusColor: Colors.white),
                      autofillHints: Characters('Number'),
                      keyboardType: TextInputType.number,
                      
                    ),
                  ),
                  SizedBox(height: 50),


                  ElevatedButton(onPressed :() =>{}, child: Text('Login'),style: ElevatedButton.styleFrom(primary: Colors.black),)
                ],
              )

          ),
        ),
      ),
    );
  }
}

