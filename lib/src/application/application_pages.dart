import 'package:app_d2mini_ingressos/src/views/cadastro_evento_view.dart';
import 'package:app_d2mini_ingressos/src/views/cadastro_vip_view.dart';
import 'package:app_d2mini_ingressos/src/views/home_view.dart';
import 'package:app_d2mini_ingressos/src/views/relatorio_venda_view.dart';
import 'package:app_d2mini_ingressos/src/views/venda_ingresso_view.dart';
import 'package:get/get.dart';

part 'application_routes.dart';

class ApplicationPages {
  static const initialRoute = ApplicationRoutes.home;

  static final routes = [
    GetPage(
      name: ApplicationRoutes.home,
      page: () => const HomeWidget(),
    ),
    GetPage(
      name: ApplicationRoutes.cadastro,
      page: () => const CadastroEventoWidget(),
    ),
    GetPage(
      name: ApplicationRoutes.cadastroVIP,
      page: () => const CadastroVipWidget(),
    ),
    GetPage(
      name: ApplicationRoutes.venda,
      page: () => const VendaIngressoWidget(),
    ),
    GetPage(
      name: ApplicationRoutes.relatorioVendas,
      page: () => const RelatorioVendasWidget(),
    ),
  ];
}
