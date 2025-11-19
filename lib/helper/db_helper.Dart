import 'dart:convert';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../models/tvseries_model.Dart';

class DbService {
  static final DbService _instance = DbService._internal();
  factory DbService() => _instance;
  DbService._internal();

  Database? _db;
  Future<Database> get db async {
    if (_db != null) return _db!;
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'pas_mobile.db');
    _db = await openDatabase(path, version: 2, onCreate: _onCreate, onUpgrade: _onUpgrade);
    return _db!;
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE bookmarks (
        id INTEGER PRIMARY KEY,
        name TEXT,
        image TEXT,
        rating REAL,
      )
    ''');
    await db.execute('''
      CREATE TABLE tvseries (
        id INTEGER PRIMARY KEY,
        name TEXT,
        data TEXT
      )
    ''');
  }

  Future<void> _onUpgrade(Database db, int oldVersion, int newVersion) async {
    if (oldVersion < 2) {
      await db.execute('''
        CREATE TABLE IF NOT EXISTS tvseries (
          id INTEGER PRIMARY KEY,
          name TEXT,
          data TEXT
        )
      ''');
    }
  }

  Future<void> insertBookmark(Storemodel item) async {
    final database = await db;
    await database.insert(
      'bookmarks',
      item.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // TV Series methods
  Future<void> insertTvseries(Tvseriesmodel item) async {
    final database = await db;
    final data = json.encode(item.toJson());
    await database.insert(
      'tvseries',
      {
        'id': item.id,
        'name': item.name,
        'data': data,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> deleteBookmark(int id) async {
    final database = await db;
    await database.delete('bookmarks', where: 'id = ?', whereArgs: [id]);
  }

  Future<void> deleteTvseries(int id) async {
    final database = await db;
    await database.delete('tvseries', where: 'id = ?', whereArgs: [id]);
  }

  Future<bool> existsBookmark(int id) async {
    final database = await db;
    final res = await database.query('bookmarks', where: 'id = ?', whereArgs: [id], limit: 1);
    return res.isNotEmpty;
  }

  Future<bool> existsTvseries(int id) async {
    final database = await db;
    final res = await database.query('tvseries', where: 'id = ?', whereArgs: [id], limit: 1);
    return res.isNotEmpty;
  }

  Future<List<Storemodel>> getBookmarks() async {
    final database = await db;
    final res = await database.query('bookmarks', orderBy: 'title');
    return res.map((m) => Storemodel.fromMap(m)).toList();
  }

  Future<List<Tvseriesmodel>> getTvseries() async {
    final database = await db;
    final res = await database.query('tvseries', orderBy: 'name');
    return res.map((m) {
      final data = m['data'] as String?;
      if (data == null) return null;
      final Map<String, dynamic> jsonMap = json.decode(data);
      return Tvseriesmodel.fromJson(jsonMap);
    }).whereType<Tvseriesmodel>().toList();
  }
}