import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:{{ package_name.snakeCase() }}/src/features/{{ feature_name.snakeCase() }}/business_logic/use_case/{{ feature_name.snakeCase() }}_use_case.dart';
import 'package:{{ package_name.snakeCase() }}/src/features/{{ feature_name.snakeCase() }}/presentation/bloc/{{ feature_name.snakeCase() }}_bloc.dart';
import 'package:{{ package_name.snakeCase() }}/src/features/{{ feature_name.snakeCase() }}/presentation/bloc/{{ feature_name.snakeCase() }}_exception.dart';

import '../../fixtures/{{ feature_name.snakeCase() }}_entity_fixture.dart';

class _Mock{{ feature_name.pascalCase() }}UseCase extends Mock implements {{ feature_name.pascalCase() }}UseCase {}

void main() {
  setUpAll(() {
    registerFallbackValue(StackTrace.empty);
  });

  group('{{ feature_name.pascalCase() }}Bloc >', () {
    final mock{{ feature_name.pascalCase() }}UseCase = _Mock{{ feature_name.pascalCase() }}UseCase();

    final entityFixture = {{ feature_name.pascalCase() }}EntityFixture.base();
    late {{ feature_name.pascalCase() }}Bloc sut;

    setUp(() {
      sut = {{ feature_name.pascalCase() }}Bloc(
        {{ feature_name.camelCase() }}UseCase: mock{{ feature_name.pascalCase() }}UseCase,
      );
    });

    test('initial state is [{{ feature_name.pascalCase() }}Initial]', () {
      expect(sut.state, isA<{{ feature_name.pascalCase() }}Initial>());
    });

    blocTest<{{ feature_name.pascalCase() }}Bloc, {{ feature_name.pascalCase() }}State>(
      'emits [{{ feature_name.pascalCase() }}Loading, {{ feature_name.pascalCase() }}Success] '
      'when {{ feature_name.pascalCase() }}ButtonTapped is added.',
      setUp: () {
        when(() => mock{{ feature_name.pascalCase() }}UseCase.fetch{{ feature_name.pascalCase() }}()).thenAnswer(
          (invocation) => Future.value(
            entityFixture,
          ),
        );
      },
      build: () => sut,
      act: (bloc) => bloc.add({{ feature_name.pascalCase() }}ButtonTapped()),
      expect: () => <{{ feature_name.pascalCase() }}State>[
        {{ feature_name.pascalCase() }}Loading(),
        {{ feature_name.pascalCase() }}Success(name: entityFixture.name),
      ],
    );

    blocTest<{{ feature_name.pascalCase() }}Bloc, {{ feature_name.pascalCase() }}State>(
      'emits [{{ feature_name.pascalCase() }}Loading, {{ feature_name.pascalCase() }}Failure] and records error'
      'when {{ feature_name.pascalCase() }}ButtonTapped is added and fetch fails.',
      setUp: () {
        when(() => mock{{ feature_name.pascalCase() }}UseCase.fetch{{ feature_name.pascalCase() }}()).thenThrow(
          (invocation) => Future.value(
            const {{ feature_name.pascalCase() }}ButtonTappedException('HTTP failed - 503'),
          ),
        );
      },
      build: () => sut,
      act: (bloc) => bloc.add({{ feature_name.pascalCase() }}ButtonTapped()),
      expect: () => <{{ feature_name.pascalCase() }}State>[
        {{ feature_name.pascalCase() }}Loading(),
        {{ feature_name.pascalCase() }}Failure(),
      ],
    );
  });
}
