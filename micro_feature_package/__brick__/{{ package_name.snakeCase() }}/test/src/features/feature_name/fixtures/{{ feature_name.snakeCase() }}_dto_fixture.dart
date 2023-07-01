// ignore_for_file: avoid_classes_with_only_static_members

import 'package:{{ package_name.snakeCase() }}/src/features/{{ feature_name.snakeCase() }}/data/dtos/{{ feature_name.snakeCase() }}_dto.dart';

class {{ feature_name.pascalCase() }}DTOFixture {
  static {{ feature_name.pascalCase() }}DTO base() {
    return {{ feature_name.pascalCase() }}DTO.fromJson(_baseJson);
  }

  static final Map<String, dynamic> _baseJson = {
    'id': 123,
    'name': 'fake name',
  };
}
