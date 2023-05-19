import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rotas_getx/pages/page_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Tela1(),
    );
  }
}
