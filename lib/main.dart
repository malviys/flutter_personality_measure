import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:quiz_app/ioc.dart';
import 'package:quiz_app/presentation/ui/page/home/home_page.dart';

void main() {
  initializeDependencies();
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(
        repository: serviceLocator.get(),
      ),
    );
  }
}
