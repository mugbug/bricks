import 'package:{{ package_name.snakeCase() }}/src/features/{{ feature_name.snakeCase() }}/business_logic/use_case/{{ feature_name.snakeCase() }}_use_case.dart';
import 'package:{{ package_name.snakeCase() }}/src/features/{{ feature_name.snakeCase() }}/data/data_source/{{ feature_name.snakeCase() }}_rest_data_source.dart';
import 'package:{{ package_name.snakeCase() }}/src/features/{{ feature_name.snakeCase() }}/data/repositories/{{ feature_name.snakeCase() }}_repository.dart';
import 'package:{{ package_name.snakeCase() }}/src/features/{{ feature_name.snakeCase() }}/presentation/bloc/{{ feature_name.snakeCase() }}_bloc.dart';
import 'package:{{ package_name.snakeCase() }}/src/features/{{ feature_name.snakeCase() }}/presentation/screens/{{ feature_name.snakeCase() }}_screen.dart';
import 'package:http/http.dart';

/// The package that will start this module should implement this
/// abstract class returning the expected objects so we can use them here.
///
/// For instance:
/// ```dart
/// class AppCompositionRoot implements {{ package_name.pascalCase() }}ExternalCompositionRoot {
///   @override
///   Client makeHttpClient(); {
///     return Client();
///   }
/// }
/// ```
///
abstract class {{ package_name.pascalCase() }}ExternalCompositionRoot {
  Client makeHttpClient();
}

/// Use this class to create any object inside this module.
/// Avoid using the classes constructor directly since it'll require
/// passing a lot of parameters.
class {{ package_name.pascalCase() }}CompositionRoot {
  {{ package_name.pascalCase() }}CompositionRoot({
    required {{ package_name.pascalCase() }}ExternalCompositionRoot externalCompositionRoot,
  }) : _externalCompositionRoot = externalCompositionRoot;

  final {{ package_name.pascalCase() }}ExternalCompositionRoot _externalCompositionRoot;

  {{ feature_name.pascalCase() }}Screen makeScreen() {
    return {{ feature_name.pascalCase() }}Screen(bloc: makeBloc());
  }

  {{ feature_name.pascalCase() }}Bloc makeBloc() {
    return {{ feature_name.pascalCase() }}Bloc(
      {{ feature_name.camelCase() }}UseCase: makeUseCase(),
    );
  }

  {{ feature_name.pascalCase() }}UseCase makeUseCase() {
    return {{ feature_name.pascalCase() }}UseCase(repository: makeRepository());
  }

  {{ feature_name.pascalCase() }}Repository makeRepository() {
    return {{ feature_name.pascalCase() }}Repository(
        {{ feature_name.camelCase() }}RestDataSource: makeRestDataSource());
  }

  {{ feature_name.pascalCase() }}RestDataSource makeRestDataSource() {
    return {{ feature_name.pascalCase() }}RestDataSource(
      client: _externalCompositionRoot.makeHttpClient(),
    );
  }
}
