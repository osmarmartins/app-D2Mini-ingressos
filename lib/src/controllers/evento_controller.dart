import 'package:get/get.dart';

class EventoController extends GetxController {
  var descricao = ''.obs;
  var local = ''.obs;
  var data = DateTime.now().obs;
  var horario = DateTime.now().obs;
  var valor = 0.obs;
  var valorVip = 0.obs;
  var ativo = false.obs;
}
