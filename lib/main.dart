import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

class Tela1 extends StatelessWidget {
  const Tela1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Tela 1"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Get.to(
                () => const Tela2(),
              );
            },
            child: const Text("ir para Pagina 2"),
          ),
        ),
      ),
    );
  }
}

class Tela2 extends StatelessWidget {
  const Tela2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tela 2'),
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
