import 'package:app_d2mini_ingressos/src/components/header_widget.dart';
import 'package:flutter/material.dart';

class RelatorioVendasWidget extends StatelessWidget {
  const RelatorioVendasWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Relatório de Vendas',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: Colors.orange[100],
        child: const Column(
          children: [
            ApplicationHeaderWidget(),
            Text('CORPO'),
          ],
        ),
      ),
    );
  }
}
