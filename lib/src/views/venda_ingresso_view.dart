import 'package:flutter/material.dart';

class VendaIngressoWidget extends StatelessWidget {
  const VendaIngressoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Venda de Ingressos'),
        backgroundColor: Colors.green[200],
      ),
      body: Column(
        children: [
          Container(
            height: 85,
            color: Colors.green[100],
            child: const Row(
              children: [Text('CABEÇALHO')],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green[200],
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.green[300],
                      child: const Column(
                        children: [
                          Text('LADO ESQUERDO'),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    color: Colors.green[400],
                    child: const Column(
                      children: [
                        Text('LADO DIREITO'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
