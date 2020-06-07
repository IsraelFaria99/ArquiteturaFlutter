// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign-in.viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignInViewModel on _SignInViewModelBase, Store {
  final _$isLoadingAtom = Atom(name: '_SignInViewModelBase.isLoading');

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

  final _$authenticateUserAsyncAction =
      AsyncAction('_SignInViewModelBase.authenticateUser');

  @override
  Future<bool> authenticateUser() {
    return _$authenticateUserAsyncAction.run(() => super.authenticateUser());
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading}
    ''';
  }
}
