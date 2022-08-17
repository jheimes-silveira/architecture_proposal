// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppController on _AppControllerBase, Store {
  final _$versionNameAtom = Atom(name: '_AppControllerBase.versionName');

  @override
  String? get versionName {
    _$versionNameAtom.reportRead();
    return super.versionName;
  }

  @override
  set versionName(String? value) {
    _$versionNameAtom.reportWrite(value, super.versionName, () {
      super.versionName = value;
    });
  }

  final _$buildNumberAtom = Atom(name: '_AppControllerBase.buildNumber');

  @override
  String? get buildNumber {
    _$buildNumberAtom.reportRead();
    return super.buildNumber;
  }

  @override
  set buildNumber(String? value) {
    _$buildNumberAtom.reportWrite(value, super.buildNumber, () {
      super.buildNumber = value;
    });
  }

  final _$initPackageInfoAsyncAction =
      AsyncAction('_AppControllerBase.initPackageInfo');

  @override
  Future<void> initPackageInfo() {
    return _$initPackageInfoAsyncAction.run(() => super.initPackageInfo());
  }

  @override
  String toString() {
    return '''
versionName: ${versionName},
buildNumber: ${buildNumber}
    ''';
  }
}
