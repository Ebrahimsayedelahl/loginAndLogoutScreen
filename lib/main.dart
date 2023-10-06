import 'package:flutter/material.dart';
import 'package:login_signup/login.dart';
import 'package:login_signup/signup.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/login', // تحديد المسار الابتدائي هنا
        routes: {
          '/login': (context) => Login(),
          '/signup': (context) => Signup(),
        }
    );
  }
}




