part of '{{ feature_name.snakeCase() }}_bloc.dart';

@immutable
abstract class {{ feature_name.pascalCase() }}State extends Equatable {
  const {{ feature_name.pascalCase() }}State();
}

class {{ feature_name.pascalCase() }}Initial extends {{ feature_name.pascalCase() }}State {
  @override
  List<Object?> get props => [];
}

class {{ feature_name.pascalCase() }}Loading extends {{ feature_name.pascalCase() }}State {
  @override
  List<Object?> get props => [];
}

class {{ feature_name.pascalCase() }}Failure extends {{ feature_name.pascalCase() }}State {
  @override
  List<Object?> get props => [];
}

class {{ feature_name.pascalCase() }}Success extends {{ feature_name.pascalCase() }}State {
  final String name;

  const {{ feature_name.pascalCase() }}Success({required this.name});

  @override
  List<Object?> get props => [name];
}
