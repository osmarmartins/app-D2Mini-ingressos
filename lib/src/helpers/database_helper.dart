import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static DatabaseHelper? _instance;
  static Database? _database;

  DatabaseHelper._();

  static DatabaseHelper getInstance() {
    _instance ??= DatabaseHelper._();
    return _instance!;
  }

  Future<Database> getDatabase() async {
    _database ??= await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final database = await openDatabase(
      join(await getDatabasesPath(), 'pontoremoto.db'),
      onCreate: (db, version) {
        _createTableEvento(db);
        _createTableIngresso(db);
      },
      version: 1,
    );
    return database;
  }

  void _createTableEvento(Database db) async {
    await db.execute('''
    CREATE TABLE evento (
      id INTEGER PRIMARY KEY,
      descricao TEXT,
      local TEXT,
      data TEXT,
      horario TEXT,
      valor REAL,
      valor_vip REAL,
      ativo INTEGER
    )
  ''');
  }

  void _createTableIngresso(Database db) async {
    await db.execute('''
        CREATE TABLE ingresso (
          id INTEGER PRIMARY KEY,
          id_evento INTEGER,
          nome TEXT,
          data_venda TEXT,
          mesa INTEGER,
          valor REAL,
          data_pagamento TEXT,
          status INTEGER
        )
  ''');
  }
}
