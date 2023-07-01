import 'package:{{ package_name.snakeCase() }}/src/features/{{ feature_name.snakeCase() }}/data/data_source/{{ feature_name.snakeCase() }}_rest_data_source.dart';
import 'package:{{ package_name.snakeCase() }}/src/features/{{ feature_name.snakeCase() }}/data/repositories/{{ feature_name.snakeCase() }}_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../fixtures/{{ feature_name.snakeCase() }}_dto_fixture.dart';

class _Mock{{ feature_name.pascalCase() }}RestDataSource extends Mock
    implements {{ feature_name.pascalCase() }}RestDataSource {}

void main() {
  group('{{ feature_name.pascalCase() }}Repository >', () {
    const fakeId = 123;
    final mock{{ feature_name.pascalCase() }}DataSource = _Mock{{ feature_name.pascalCase() }}RestDataSource();
    late {{ feature_name.pascalCase() }}Repository sut;

    setUp(() {
      sut = {{ feature_name.pascalCase() }}Repository(
        {{ feature_name.camelCase() }}RestDataSource: mock{{ feature_name.pascalCase() }}DataSource,
      );
    });

    test(
        'when fetch{{ feature_name.pascalCase() }}() is called'
        'then it should return an Entity instance', () async {
      when(
        () => mock{{ feature_name.pascalCase() }}DataSource.fetch(id: fakeId),
      ).thenAnswer(
        (_) => Future.value({{ feature_name.pascalCase() }}DTOFixture.base()),
      );

      final dto = await sut.fetch(id: fakeId);

      expect(dto.name, 'fake name');
    });
  });
}
