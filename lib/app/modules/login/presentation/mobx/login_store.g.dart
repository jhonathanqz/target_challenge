// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginStore on LoginStoreBase, Store {
  Computed<String?>? _$passwordValidComputed;

  @override
  String? get passwordValid =>
      (_$passwordValidComputed ??= Computed<String?>(() => super.passwordValid,
              name: 'LoginStoreBase.passwordValid'))
          .value;
  Computed<String?>? _$userValidComputed;

  @override
  String? get userValid =>
      (_$userValidComputed ??= Computed<String?>(() => super.userValid,
              name: 'LoginStoreBase.userValid'))
          .value;

  late final _$isLoadingAtom =
      Atom(name: 'LoginStoreBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$userFieldAtom =
      Atom(name: 'LoginStoreBase.userField', context: context);

  @override
  String get userField {
    _$userFieldAtom.reportRead();
    return super.userField;
  }

  @override
  set userField(String value) {
    _$userFieldAtom.reportWrite(value, super.userField, () {
      super.userField = value;
    });
  }

  late final _$passwordFieldAtom =
      Atom(name: 'LoginStoreBase.passwordField', context: context);

  @override
  String get passwordField {
    _$passwordFieldAtom.reportRead();
    return super.passwordField;
  }

  @override
  set passwordField(String value) {
    _$passwordFieldAtom.reportWrite(value, super.passwordField, () {
      super.passwordField = value;
    });
  }

  late final _$loginAsyncAction =
      AsyncAction('LoginStoreBase.login', context: context);

  @override
  Future<void> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  late final _$LoginStoreBaseActionController =
      ActionController(name: 'LoginStoreBase', context: context);

  @override
  void setUserField(String value) {
    final _$actionInfo = _$LoginStoreBaseActionController.startAction(
        name: 'LoginStoreBase.setUserField');
    try {
      return super.setUserField(value);
    } finally {
      _$LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPasswordField(String value) {
    final _$actionInfo = _$LoginStoreBaseActionController.startAction(
        name: 'LoginStoreBase.setPasswordField');
    try {
      return super.setPasswordField(value);
    } finally {
      _$LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
userField: ${userField},
passwordField: ${passwordField},
passwordValid: ${passwordValid},
userValid: ${userValid}
    ''';
  }
}
