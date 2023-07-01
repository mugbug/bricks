import 'package:http/http.dart';

import '../../data/dtos/{{ feature_name.snakeCase() }}_dto.dart';

class {{ feature_name.pascalCase() }}RestDataSource {
  final Client _client;

  {{ feature_name.pascalCase() }}RestDataSource({
    required Client client,
  }) : _client = client;

  Future<{{ feature_name.pascalCase() }}DTO> fetch({
    required int id,
  }) async {
    final Uri uri = Uri.parse('https://google.com');

    // final response = await _client.get(
    //   uri,
    // );

    await Future.delayed(const Duration(seconds: 2));

    return {{ feature_name.pascalCase() }}DTO(id: id, name: 'Mocked result');
    // return {{ feature_name.pascalCase() }}DTO.fromJson(jsonDecode(response.body));
  }
}
