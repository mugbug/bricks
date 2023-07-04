// ignore_for_file: prefer_const_constructors
import 'package:{{ package_name.snakeCase() }}/{{ package_name.snakeCase() }}.dart';
import 'package:test/test.dart';

void main() {
  group('{{ package_name.pascalCase() }}', () {
    test('can be instantiated', () {
      expect({{ package_name.pascalCase() }}(), isNotNull);
    });
  });
}
