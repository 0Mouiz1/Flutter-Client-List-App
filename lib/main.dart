import 'package:flutter/material.dart';
import 'package:session11_sqlite_db/screens/add_student_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Client Record Keeper',
      home: const AddStudentScreen(),
    );
  }
}
