import 'package:http/http.dart';
import 'package:mocktail/mocktail.dart';
import 'package:{{ package_name.snakeCase() }}/src/features/{{ feature_name.snakeCase() }}/data/data_source/{{ feature_name.snakeCase() }}_rest_data_source.dart';
import 'package:test/test.dart';

class _MockHttpClient extends Mock implements Client {}

class _FakeResponse extends Fake implements Response {}

void main() {
  group('{{ feature_name.pascalCase() }}Repository >', () {
    const fakeId = 123;
    final mockHttpClient = _MockHttpClient();
    late {{ feature_name.pascalCase() }}RestDataSource sut;

    setUp(() {
      when(() => mockHttpClient.get(any())).thenAnswer(
        (_) async => _FakeResponse(),
      );
      sut = {{ feature_name.pascalCase() }}RestDataSource(
        client: mockHttpClient,
      );
    });

    test(
        'when fetch{{ feature_name.pascalCase() }}() is called'
        'then it should return an Entity instance', () async {
      final dto = await sut.fetch(id: fakeId);

      expect(dto.id, fakeId);
      expect(dto.name, 'Mocked result');
    });
  });
}
