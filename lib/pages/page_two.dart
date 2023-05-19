import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Tela2 extends StatelessWidget {
  const Tela2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tela 2 ${Get.arguments}"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text("Ir para Pagina 1"),
          ),
        ),
      ),
    );
  }
}
