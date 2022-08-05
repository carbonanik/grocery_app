import 'package:instant_grrocery_delivery/model/cart_item.dart';
import 'package:instant_grrocery_delivery/model/coupon.dart';
import 'package:sqflite/sqflite.dart';

class CartDatabase {
  static final CartDatabase instance = CartDatabase._init();

  static Database? _database;

  CartDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('cart.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = '$dbPath/$filePath';

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future<void> _createDB(Database db, int version) async {
    const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const integerType = 'INTEGER NOT NULL';
    const doubleType = 'REAL NOT NULL';
    const doubleNullType = 'REAL';
    const stringType = 'TEXT NOT NULL';

    await db.execute('''
      CREATE TABLE 
    ''');

    await db.execute('''
      CREATE TABLE $cartItemTable (
        ${CartItemFields.id} $idType,
        ${CartItemFields.productId} $integerType,
        ${CartItemFields.quantity} $integerType,
        ${CartItemFields.addedTime} $stringType,
        ${CartItemFields.price} $doubleType,
        ${CartItemFields.name} $stringType,
        ${CartItemFields.image} $stringType,
        ${CartItemFields.weight} $stringType
      )
    ''');

    await db.execute('''
      CREATE TABLE $couponTable (
        ${CouponFields.id} $idType,
        ${CouponFields.title} $stringType,
        ${CouponFields.description} $stringType,
        ${CouponFields.code} $stringType,
        ${CouponFields.discount} $doubleType,
        ${CouponFields.fixed} $doubleNullType,
        ${CouponFields.status} $stringType
      )
    ''');
  }

  Future<CartItem> insert(CartItem item) async {
    final db = await database;
    final id = await db.insert(cartItemTable, item.toJson(), conflictAlgorithm: ConflictAlgorithm.replace);
    // final id = await db.query(table)
    return item.copyWith(id: id);
  }

  Future<CartItem?> getById(int? id) async {
    final db = await database;
    final item = await db.query(
      cartItemTable,
      columns: CartItemFields.values,
      where: '${CartItemFields.id} = ?',
      whereArgs: [id],
    );
    return item.isNotEmpty ? CartItem.fromJson(item.first) : null;
  }

  Future<CartItem?> getByProductId(int productId) async {
    final db = await database;
    final item = await db.query(
      cartItemTable,
      columns: CartItemFields.values,
      where: '${CartItemFields.productId} = ?',
      whereArgs: [productId],
    );
    return item.isNotEmpty ? CartItem.fromJson(item.first) : null;
  }

  Future<List<CartItem>> getAll() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(cartItemTable);
    return List.generate(maps.length, (i) {
      return CartItem.fromJson(maps[i]);
    });
  }

  Future<void> update(CartItem item) async {
    final db = await database;
    await db.update(
      cartItemTable,
      item.toJson(),
      where: '${CartItemFields.id} = ?',
      whereArgs: [item.id],
    );
  }

  Future<void> delete(int id) async {
    final db = await database;
    await db.delete(cartItemTable, where: '${CartItemFields.id} = ?', whereArgs: [id]);
  }

  Future<void> deleteByProductId(int productId) async {
    final db = await database;
    await db.delete(cartItemTable, where: '${CartItemFields.productId} = ?', whereArgs: [productId]);
  }

  Future<void> deleteAll() async {
    final db = await database;
    await db.delete(cartItemTable);
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }
}
