import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rotas_getx/controller/page_one_controller.dart';
import 'package:rotas_getx/pages/page_two.dart';

class Tela1 extends StatelessWidget {
  Tela1({Key? key}) : super(key: key);

  final PageOneController _controller = Get.put(PageOneController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Tela 1"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Obx(
              () => Text(
                "Voce apertou o botao ${_controller.number.toString()}",
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.to(
                    () => const Tela2(),
                    arguments: _controller.number.toString(),
                  );
                },
                child: const Text("ir para Pagina 2"),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _controller.incrementeNumber,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
