// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginController on LoginControllerBase, Store {
  late final _$_statusAtom =
      Atom(name: 'LoginControllerBase._status', context: context);

  LoginStateStatus get status {
    _$_statusAtom.reportRead();
    return super._status;
  }

  @override
  LoginStateStatus get _status => status;

  @override
  set _status(LoginStateStatus value) {
    _$_statusAtom.reportWrite(value, super._status, () {
      super._status = value;
    });
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
