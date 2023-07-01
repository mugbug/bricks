import 'package:{{ package_name.snakeCase() }}/src/features/{{ feature_name.snakeCase() }}/data/repositories/{{ feature_name.snakeCase() }}_repository.dart';

import '../../data/dtos/{{ feature_name.snakeCase() }}_dto.dart';
import '../entities/{{ feature_name.snakeCase() }}_entity.dart';

/// UseCase - The "Brain" of the architecture
///
/// It's the component where we'll process all the data we need,
/// apply business logic to it to create an object that is easy to use
/// on the presentation layer
///
/// In practice, here is where you will get 1+ DTOs from 1+ repositories
/// and condense it all into a single entity
///
/// For instance, let's say we have an API that we can fetch a user's name
/// and another API that we can fetch a user's birth date.
/// We'll use this information to present in a screen the following text:
/// "User André Katz was born in 15/09/1995"
///
/// To do this, we will return a simple entity, that will enable us to do this:
/// "User {entity.name} was born in {entity.date}"

class {{ feature_name.pascalCase() }}UseCase {
  final {{ feature_name.pascalCase() }}Repository _repository;

  const {{ feature_name.pascalCase() }}UseCase({
    required {{ feature_name.pascalCase() }}Repository repository,
  }) : _repository = repository;

  Future<{{ feature_name.pascalCase() }}Entity> fetch{{ feature_name.pascalCase() }}() async {
    final {{ feature_name.camelCase() }}DTO = await _repository.fetch(
      id: 1,
    );

    return _convert{{ feature_name.pascalCase() }}DtoToEntity(
      {{ feature_name.camelCase() }}DTO: {{ feature_name.camelCase() }}DTO,
    );
  }

  {{ feature_name.pascalCase() }}Entity _convert{{ feature_name.pascalCase() }}DtoToEntity({
    required {{ feature_name.pascalCase() }}DTO {{ feature_name.camelCase() }}DTO,
  }) {
    final entity = {{ feature_name.pascalCase() }}Entity(
      name: {{ feature_name.camelCase() }}DTO.name,
    );
    return entity;
  }
}
