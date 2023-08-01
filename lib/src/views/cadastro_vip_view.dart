import 'package:flutter/material.dart';

class CadastroVipWidget extends StatelessWidget {
  const CadastroVipWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro VIP'),
        backgroundColor: Colors.red[200],
      ),
      body: Container(color: Colors.red[100]),
    );
  }
}
