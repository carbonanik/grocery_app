import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// extension AsyncValueExt on AsyncValue {
//   // isLoading shorthand (AsyncLoading is a subclass of AsycValue)
//   bool get isLoading => this is AsyncLoading;
//   bool get isData => this is AsyncData && value != null;
//   static AsyncValue<Null> initial() => const AsyncData(null);
//
//   // show a snackbar on error only
//   void showSnackBarOnError(BuildContext context) => whenOrNull(
//         error: (error, _) {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(content: Text(error.toString())),
//           );
//         },
//       );
// }

// extension AsyncValueExt on AsyncValue {
//   // isLoading shorthand (AsyncLoading is a subclass of AsycValue)
//   bool get isLoading => this is AsyncLoading;
//   bool get isData => this is AsyncData && value != null;
//   static AsyncValue<Null> initial() => const AsyncData(null);
//
//   // show a snackbar on error only
//   void showSnackBarOnError(BuildContext context) => whenOrNull(
//         error: (error, _) {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(content: Text(error.toString())),
//           );
//         },
//       );
// }
