import 'package:hive_ce/hive.dart';
import 'package:injectable/injectable.dart';

@module
abstract class HiveModule {
  @preResolve
  Future<Box<String>> get stringBox => Hive.openBox<String>('my_string_box');
}
