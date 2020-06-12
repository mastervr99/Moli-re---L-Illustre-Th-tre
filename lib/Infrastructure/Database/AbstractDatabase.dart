import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

abstract class AbstractDatabase {

  String databaseName;

  Database database;

  AbstractDatabase(String databaseName)
  {
    this.databaseName = databaseName;
  }

  void createDatabase() async {
    String databasesPath = await getDatabasesPath();
    String dbPath = join(databasesPath, this.databaseName);

    this.database = await openDatabase(dbPath, version: 1, onCreate: _populateDb);
  }

  @protected
  Future<void> _populateDb(Database database, int version);
}