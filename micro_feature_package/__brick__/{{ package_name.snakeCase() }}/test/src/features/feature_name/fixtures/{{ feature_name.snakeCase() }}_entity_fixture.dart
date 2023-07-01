// ignore_for_file: avoid_classes_with_only_static_members

import 'package:{{ package_name.snakeCase() }}/src/features/{{ feature_name.snakeCase() }}/business_logic/entities/{{ feature_name.snakeCase() }}_entity.dart';

class {{ feature_name.pascalCase() }}EntityFixture {
  static {{ feature_name.pascalCase() }}Entity base() {
    return const {{ feature_name.pascalCase() }}Entity(name: 'some mocked name');
  }
}
