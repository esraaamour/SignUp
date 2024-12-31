// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// The registration page is designed to provide users with a simple and welcoming interface for account creation.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Regstration(),
    );
  }
}

class Regstration extends StatelessWidget {
  const Regstration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 255, 198, 29),
        title: Text(
          style: TextStyle(color: Colors.white, fontSize: 30),
          'Registration Page',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Center(
              child: Text(
                "Welcome!\nPlease fill out the details below to create your account.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color.fromARGB(255, 232, 180, 25),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: 350,
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 233, 219, 219),
                borderRadius: BorderRadius.all(Radius.circular(22)),
              ),
              child: TextField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Name",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 350,
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 233, 219, 219),
                borderRadius: BorderRadius.all(Radius.circular(22)),
              ),
              child: TextField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "Email",
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 350,
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 233, 219, 219),
                borderRadius: BorderRadius.all(Radius.circular(22)),
              ),
              child: TextField(
                obscureText: true,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  hintText: "Password",
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Sign up",
                style: TextStyle(fontSize: 19, color: Colors.white),
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
                backgroundColor: MaterialStateProperty.all(Colors.amber),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
