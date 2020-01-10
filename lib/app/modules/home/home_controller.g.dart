// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  final _$decimalAtom = Atom(name: '_HomeBase.decimal');

  @override
  TextEditingController get decimal {
    _$decimalAtom.context.enforceReadPolicy(_$decimalAtom);
    _$decimalAtom.reportObserved();
    return super.decimal;
  }

  @override
  set decimal(TextEditingController value) {
    _$decimalAtom.context.conditionallyRunInAction(() {
      super.decimal = value;
      _$decimalAtom.reportChanged();
    }, _$decimalAtom, name: '${_$decimalAtom.name}_set');
  }

  final _$binaryAtom = Atom(name: '_HomeBase.binary');

  @override
  TextEditingController get binary {
    _$binaryAtom.context.enforceReadPolicy(_$binaryAtom);
    _$binaryAtom.reportObserved();
    return super.binary;
  }

  @override
  set binary(TextEditingController value) {
    _$binaryAtom.context.conditionallyRunInAction(() {
      super.binary = value;
      _$binaryAtom.reportChanged();
    }, _$binaryAtom, name: '${_$binaryAtom.name}_set');
  }

  final _$octalAtom = Atom(name: '_HomeBase.octal');

  @override
  TextEditingController get octal {
    _$octalAtom.context.enforceReadPolicy(_$octalAtom);
    _$octalAtom.reportObserved();
    return super.octal;
  }

  @override
  set octal(TextEditingController value) {
    _$octalAtom.context.conditionallyRunInAction(() {
      super.octal = value;
      _$octalAtom.reportChanged();
    }, _$octalAtom, name: '${_$octalAtom.name}_set');
  }

  final _$hexaAtom = Atom(name: '_HomeBase.hexa');

  @override
  TextEditingController get hexa {
    _$hexaAtom.context.enforceReadPolicy(_$hexaAtom);
    _$hexaAtom.reportObserved();
    return super.hexa;
  }

  @override
  set hexa(TextEditingController value) {
    _$hexaAtom.context.conditionallyRunInAction(() {
      super.hexa = value;
      _$hexaAtom.reportChanged();
    }, _$hexaAtom, name: '${_$hexaAtom.name}_set');
  }

  final _$_HomeBaseActionController = ActionController(name: '_HomeBase');

  @override
  void fromBin(String text) {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.fromBin(text);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void fromOct(String text) {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.fromOct(text);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void fromHex(String text) {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.fromHex(text);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearAll() {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.clearAll();
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }
}
