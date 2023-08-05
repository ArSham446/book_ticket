import 'package:book_ticket/screens/bottom_bar.dart';
import 'package:book_ticket/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'routs/routs.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Styles.primaryColor,
      ),
      initialRoute: RoutsClass.getHomeRout(),
      home: const BottomBar(),
    );
  }
}
