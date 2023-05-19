import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rotas_getx/pages/page_two.dart';

class Tela1 extends StatelessWidget {
  const Tela1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Tela 1"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                    '/Tela2',
                    arguments: 'Dado da Tela 1',
                  );
                },
                child: const Text("ir para Pagina 2"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
