// import 'package:sqflite/sqflite.dart';

// import '../../model/cart.dart';
// import '../../model/cart_coupon.dart';
// import '../../model/cart_item.dart';

// class CartDatabase {
//   static final CartDatabase instance = CartDatabase._init();

//   static Database? _database;

//   CartDatabase._init();

//   Future<Database> get database async {
//     if (_database != null) return _database!;

//     _database = await _initDB('cart.db');
//     return _database!;
//   }

//   Future<Database> _initDB(String filePath) async {
//     final dbPath = await getDatabasesPath();
//     final path = '$dbPath/$filePath';

//     return await openDatabase(path, version: 1, onCreate: _createDB);
//   }

//   Future<void> _createDB(Database db, int version) async {
//     const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
//     const integerType = 'INTEGER NOT NULL';
//     const doubleType = 'REAL NOT NULL';
//     const doubleNullType = 'REAL';
//     const stringType = 'TEXT NOT NULL';

//     await db.execute('''
//       CREATE TABLE $cartTable (
//         ${CartFields.id} $idType,
//         ${CartFields.isActive} $integerType,
//         ${CartFields.totalQuantity} $integerType,
//         ${CartFields.totalPrice} $doubleType,
//         ${CartFields.count} $integerType,
//         ${CartFields.firstItemDate} $stringType,
//         ${CartFields.lastItemDate} $stringType
//       )
//     ''');

//     await db.execute('''
//       CREATE TABLE $cartItemTable (
//         ${CartItemFields.id} $idType,
//         ${CartItemFields.cartId} $integerType,
//         ${CartItemFields.productId} $integerType,
//         ${CartItemFields.quantity} $integerType,
//         ${CartItemFields.addedTime} $stringType,
//         ${CartItemFields.price} $doubleType,
//         ${CartItemFields.name} $stringType,
//         ${CartItemFields.image} $stringType,
//         ${CartItemFields.weight} $stringType
//       )
//     ''');

//     await db.execute('''
//       CREATE TABLE $cartCouponTable (
//         ${CartCouponFields.id} $idType,
//         ${CartCouponFields.couponId} $integerType,
//         ${CartCouponFields.cartId} $integerType,
//         ${CartCouponFields.title} $stringType,
//         ${CartCouponFields.description} $stringType,
//         ${CartCouponFields.code} $stringType,
//         ${CartCouponFields.discount} $doubleType,
//         ${CartCouponFields.fixed} $doubleNullType,
//         ${CartCouponFields.status} $stringType
//       )
//     ''');
//   }

//   Future close() async {
//     final db = await instance.database;
//     db.close();
//   }
// }
