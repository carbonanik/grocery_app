import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_value.freezed.dart';

@freezed
abstract class ResultValue<T> with _$ResultValue<T> {
  const factory ResultValue.empty() = _ResultValueEmpty;

  const factory ResultValue.loading() = _ResultValueLoading;

  const factory ResultValue.data(T value) = _ResultValueData;

  const factory ResultValue.error(Exception e) = _ResultValueError;
}

extension ResultValueX on ResultValue {

  get isEmpty => this is _ResultValueEmpty;
  get isLoading => this is _ResultValueLoading;
  get isData => this is _ResultValueData;
  get isError => this is _ResultValueError;

  void showSnackBarOnError(BuildContext context) => whenOrNull(
        error: (error) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(error.toString())),
          );
          return null;
        },
      );
}

