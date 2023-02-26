// import 'package:sqflite/sqflite.dart';

// import '../data_source/db/cart_database.dart';
// import '../model/cart.dart';

// class CartRepo{
//   final CartDatabase cartDatabase;
//   CartRepo({
//     required this.cartDatabase,
//   });

//   insert(Cart cart) async {
//     final db = await cartDatabase.database;
//     final id = await db.insert(cartTable, cart.toJson(), conflictAlgorithm: ConflictAlgorithm.replace);
//     return cart.copyWith(id: id);
//   }

//   Future<Cart?> getById(int? id) async {
//     final db = await cartDatabase.database;
//     final item = await db.query(
//       cartTable,
//       columns: CartFields.values,
//       where: '${CartFields.id} = ?',
//       whereArgs: [id],
//     );
//     return item.isNotEmpty ? Cart.fromJson(item.first) : null;
//   }

//   Future<Cart?> getActive() async {
//     final db = await cartDatabase.database;
//     final item = await db.query(
//       cartTable,
//       columns: CartFields.values,
//       where: '${CartFields.isActive} = ?',
//       whereArgs: [true],
//     );
//     return item.isNotEmpty ? Cart.fromJson(item.first) : null;
//   }

//   Future<Cart?> update(Cart cart) async {
//     final db = await cartDatabase.database;
//     await db.update(
//       cartTable,
//       cart.toJson(),
//       where: '${CartFields.id} = ?',
//       whereArgs: [cart.id],
//     );
//     return cart;
//   }

//   delete(int id) async {
//     final db = await cartDatabase.database;
//     await db.delete(
//       cartTable,
//       where: '${CartFields.id} = ?',
//       whereArgs: [id],
//     );
//   }
// }