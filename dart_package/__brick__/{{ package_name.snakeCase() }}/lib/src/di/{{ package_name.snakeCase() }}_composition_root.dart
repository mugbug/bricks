import 'package:{{ package_name.snakeCase() }}/src/{{ package_name.snakeCase() }}.dart';
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

  {{ package_name.pascalCase() }} make() {
    return {{ package_name.pascalCase() }}();
  }
}
