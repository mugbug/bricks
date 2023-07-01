import 'package:{{ package_name.snakeCase() }}/src/features/{{ feature_name.snakeCase() }}/business_logic/use_case/{{ feature_name.snakeCase() }}_use_case.dart';
import 'package:{{ package_name.snakeCase() }}/src/features/{{ feature_name.snakeCase() }}/data/repositories/{{ feature_name.snakeCase() }}_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../fixtures/{{ feature_name.snakeCase() }}_dto_fixture.dart';

class _Mock{{ feature_name.pascalCase() }}Repository extends Mock
    implements {{ feature_name.pascalCase() }}Repository {}

void main() {
  group('{{ feature_name.pascalCase() }}UseCase >', () {
    const fakeId = 123;
    final repositoryMock = _Mock{{ feature_name.pascalCase() }}Repository();
    late {{ feature_name.pascalCase() }}UseCase sut;

    setUp(() {
      sut = {{ feature_name.pascalCase() }}UseCase(repository: repositoryMock);
    });

    test(
        'when fetch{{ feature_name.pascalCase() }}() is called'
        'then it should return an Entity instance', () async {
      when(
        () => repositoryMock.fetch(id: any(named: 'id')),
      ).thenAnswer(
        (_) => Future.value({{ feature_name.pascalCase() }}DTOFixture.base()),
      );

      final entity = await sut.fetch{{ feature_name.pascalCase() }}();

      expect(entity.name, 'fake name');
    });
  });
}
