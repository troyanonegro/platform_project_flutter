/*import 'dart:async';
import 'dart:io';
import 'package:path/path.dart';
import 'package:platform_project/models/catalog_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

///***************************************************************************
/// DatabaseHelper Class
///***************************************************************************
class DatabaseHelper {
  static final DatabaseHelper _instance = new DatabaseHelper.internal();

  factory DatabaseHelper() => _instance;

  final String tableCatalog = "catalogTable";
  final String columnId = "id";
  final String columnType = "type";
  final String columnTypeId = "type_id";
  final String columnName = "name";
  final String columnVisible = "visible";
  final String columnOrderNo = "order_no";

  static late Database _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }

    _db = await initDb();

    return _db;
  }

  DatabaseHelper.internal();

  initDb() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();

    ///home://directory/files/catalogdb.db
    String path = join(documentDirectory.path, "catalogdb.db");

    var ourDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return ourDb;
  }

  void _onCreate(Database db, int newVersion) async {
    await db.execute(
        "CREATE TABLE $tableCatalog("
            "$columnId INTEGER PRIMARY KEY, "
            "$columnType INTEGER, "
            "$columnTypeId INTEGER, "
            "$columnName TEXT, "
            "$columnVisible INTEGER, "
            "$columnOrderNo INTEGER) ");
  }

  ///*************** saveCatalog ***************
  Future<int> saveCatalog(Catalog catalog) async {
    var dbClient = await db;
    int res = await dbClient.insert("$tableCatalog", catalog.toMap());
    return res;
  }

  ///*************** getAllCatalog ***************
  Future<List> getAllCatalog() async {
    var dbClient = await db;
    var result = await dbClient.rawQuery("SELECT * FROM $tableCatalog");

    return result.toList();
  }

  ///*************** getCount ***************
  Future<int?> getCount() async {
    var dbClient = await db;
    return Sqflite.firstIntValue(
        await dbClient.rawQuery("SELECT COUNT(*) FROM $tableCatalog"));
  }

  ///*************** getCatalog ***************
  Future<List?> getCatalog(int id) async {
    var dbClient = await db;

    var result = await dbClient
        .rawQuery("SELECT * FROM $tableCatalog WHERE $columnId = $id");
    if (result.length == 0) return null;

    return result;
  }

  ///*************** getCatalogByType ***************
  Future<List?> getCatalogByType(int type) async {
    var dbClient = await db;

    var result = await dbClient
        .rawQuery("SELECT * FROM $tableCatalog WHERE $columnType = $type");
    if (result.length == 0) return null;

    return result;
  }

  ///*************** deleteCatalog ***************
  Future<int> deleteCatalog(int id) async {
    var dbClient = await db;

    return await dbClient
        .delete(tableCatalog, where: "$columnId = ?", whereArgs: [id]);
  }

  ///*************** deleteTable ***************
  Future<int> deleteTable() async {
    var dbClient = await db;

    return await dbClient.rawDelete("DELETE FROM $tableCatalog");
  }

  ///*************** updateCatalog ***************
  Future<int> updateCatalog(Catalog catalog) async {
    var dbClient = await db;
    return await dbClient.update(tableCatalog, catalog.toMap(),
        where: "$columnId = ?", whereArgs: [catalog.id]);
  }

  ///*************** close ***************
  Future close() async {
    var dbClient = await db;
    return dbClient.close();
  }
}
*/