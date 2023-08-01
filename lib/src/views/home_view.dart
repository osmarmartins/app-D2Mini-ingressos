import 'package:app_d2mini_ingressos/src/components/header_widget.dart';
import 'package:app_d2mini_ingressos/src/application/application_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // PrinterService printer = PrinterService();
    // printer.connectInternalImp();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'D2Mini Ingressos',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: Colors.orange[100],
        child: Column(
          children: [
            const ApplicationHeaderWidget(),
            corpo(),
          ],
        ),
      ),
    );
  }

  Widget corpo() {
    return Expanded(
      child: Row(
        children: [
          imagem(),
          menu(),
        ],
      ),
    );
  }

  Widget imagem() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 10),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(30),
              ),
              child: Image.asset(
                'assets/images/eventos/pagode.jpg',
                fit: BoxFit.cover,
                height: 500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Menu de opções
  Widget menu() {
    return SizedBox(
      width: 300,
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buttonMenu(
              opcao: 'Venda de Ingresso',
              route: ApplicationRoutes.venda,
              first: true,
            ),
            buttonMenu(
              opcao: 'Relatório de Vendas',
              route: ApplicationRoutes.relatorioVendas,
            ),
            buttonMenu(
              opcao: 'Cadastro de Evento',
              route: ApplicationRoutes.cadastro,
            ),
            buttonMenu(
              opcao: 'Cadastro VIP',
              route: ApplicationRoutes.cadastroVIP,
              last: true,
            ),
          ],
        ),
      ),
    );
  }

  Widget buttonMenu({
    required String opcao,
    required String route,
    bool first = false,
    bool last = false,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(first ? 30 : 0),
        topRight: Radius.circular(first ? 30 : 0),
        bottomLeft: Radius.circular(last ? 30 : 0),
        bottomRight: Radius.circular(last ? 30 : 0),
      ),
      child: Container(
        height: 80,
        color: Colors.orange,
        width: double.infinity,
        alignment: Alignment.center,
        child: Material(
          child: InkWell(
            onTap: () {
              Get.toNamed(route);
            },
            child: Text(
              opcao,
              style: const TextStyle(
                color: Colors.white,
                backgroundColor: Colors.orange,
                fontSize: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
