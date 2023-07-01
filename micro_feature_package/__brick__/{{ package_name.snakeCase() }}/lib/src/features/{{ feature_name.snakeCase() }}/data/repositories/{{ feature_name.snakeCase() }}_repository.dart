import 'package:{{ package_name.snakeCase() }}/src/features/{{ feature_name.snakeCase() }}/data/data_source/{{ feature_name.snakeCase() }}_rest_data_source.dart';
import 'package:{{ package_name.snakeCase() }}/src/features/{{ feature_name.snakeCase() }}/data/dtos/{{ feature_name.snakeCase() }}_dto.dart';

class {{ feature_name.pascalCase() }}Repository {
  final {{ feature_name.pascalCase() }}RestDataSource _{{ feature_name.camelCase() }}RestDataSource;

  {{ feature_name.pascalCase() }}Repository({
    required {{ feature_name.pascalCase() }}RestDataSource {{ feature_name.camelCase() }}RestDataSource,
  }) : _{{ feature_name.camelCase() }}RestDataSource = {{ feature_name.camelCase() }}RestDataSource;

  Future<{{ feature_name.pascalCase() }}DTO> fetch({
    required int id,
  }) async {
    return await _{{ feature_name.camelCase() }}RestDataSource.fetch(id: id);
  }
}
