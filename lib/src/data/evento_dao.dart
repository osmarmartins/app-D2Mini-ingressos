import 'package:app_d2mini_ingressos/src/models/evento.dart';
import 'package:sqflite/sqflite.dart';

import '../helpers/database_helper.dart';

class EventoDAO {
  Future<Database> getDB() async {
    return DatabaseHelper.getInstance().getDatabase();
  }

  Future<void> save(Evento evento) async {
    final db = await getDB();
    await db.insert(
      'evento',
      evento.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Evento>> findAll() async {
    final db = await getDB();
    final List<Map<String, dynamic>> result = await db.query('evento');

    var lista = List.generate(
      result.length,
      (i) => Evento.fromMap(result[i]),
    );

    return lista;
  }
}
