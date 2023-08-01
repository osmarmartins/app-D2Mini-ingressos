import 'package:flutter/material.dart';

class CadastroEventoWidget extends StatelessWidget {
  const CadastroEventoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de Evento'),
        backgroundColor: Colors.blue[200],
      ),
      body: Container(color: Colors.blue[100]),
    );
  }
}
