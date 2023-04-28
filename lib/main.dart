import 'package:flutter/material.dart';
import 'package:flutter_sample_design/pages/homepage.dart';
import 'package:flutter_sample_design/pages/logopage.dart';
import 'package:get/get.dart';

Future<void> main() async {
   WidgetsFlutterBinding.ensureInitialized();
 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const HomePage()
    );
  }
}
