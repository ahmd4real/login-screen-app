import 'package:flutter/material.dart';

import 'package:loginscreen/Ui/Screens/loginPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        LoginPage.id: (context) => LoginPage(),
        // RegisterPage.id:(context) => RegisterPage(),
        // ChatPage.id:(context) => ChatPage(),
      },
      initialRoute: LoginPage.id,
    );
  }
}
