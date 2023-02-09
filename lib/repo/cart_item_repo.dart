import 'package:sqflite/sqflite.dart';

import '../data_source/db/cart_database.dart';
import '../model/cart_item.dart';

class CartItemRepo {
  final CartDatabase cartDatabase;

  CartItemRepo({
    required this.cartDatabase,
  });

  Future<CartItem> insert(CartItem item) async {
    print("trying to insert item");
    final db = await cartDatabase.database;
    final id = await db.insert(cartItemTable, item.toJson(), conflictAlgorithm: ConflictAlgorithm.replace);
    return item.copyWith(id: id);
  }

  Future<CartItem?> getById(int? id) async {
    final db = await cartDatabase.database;
    final item = await db.query(
      cartItemTable,
      columns: CartItemFields.values,
      where: '${CartItemFields.id} = ?',
      whereArgs: [id],
    );
    return item.isNotEmpty ? CartItem.fromJson(item.first) : null;
  }

  Future<CartItem?> getByProductId(int productId) async {
    final db = await cartDatabase.database;
    final item = await db.query(
      cartItemTable,
      columns: CartItemFields.values,
      where: '${CartItemFields.productId} = ?',
      whereArgs: [productId],
    );
    return item.isNotEmpty ? CartItem.fromJson(item.first) : null;
  }

  Future<List<CartItem>> getAll() async {
    final db = await cartDatabase.database;
    final List<Map<String, dynamic>> maps = await db.query(cartItemTable);
    return List.generate(maps.length, (i) {
      return CartItem.fromJson(maps[i]);
    });
  }

  Future<void> update(CartItem item) async {
    final db = await cartDatabase.database;
    await db.update(
      cartItemTable,
      item.toJson(),
      where: '${CartItemFields.id} = ?',
      whereArgs: [item.id],
    );
  }

  Future<void> delete(int id) async {
    final db = await cartDatabase.database;
    await db.delete(cartItemTable, where: '${CartItemFields.id} = ?', whereArgs: [id]);
  }

  Future<void> deleteByProductId(int productId) async {
    final db = await cartDatabase.database;
    await db.delete(cartItemTable, where: '${CartItemFields.productId} = ?', whereArgs: [productId]);
  }

  Future<void> deleteAll() async {
    final db = await cartDatabase.database;
    await db.delete(cartItemTable);
  }
}
