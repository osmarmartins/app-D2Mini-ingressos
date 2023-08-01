class Evento {
  int id;
  String descricao;
  String local;
  String data;
  String horario;
  num valor;
  num valorVip;
  num ativo;

  Evento({
    required this.id,
    required this.descricao,
    required this.local,
    required this.data,
    required this.horario,
    required this.valor,
    required this.valorVip,
    required this.ativo,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'descricao': descricao,
      'local': local,
      'data': data,
      'horario': horario,
      'valor': valor,
      'valor_vip': valorVip,
      'ativo': ativo
    };
  }

  static Evento fromMap(Map<String, dynamic> result) {
    return Evento(
      id: result['id'],
      descricao: result['descricao'],
      local: result['local'],
      data: result['data'],
      horario: result['horario'],
      valor: result['valor'],
      valorVip: result['valor_vip'],
      ativo: result['ativo'],
    );
  }
}
