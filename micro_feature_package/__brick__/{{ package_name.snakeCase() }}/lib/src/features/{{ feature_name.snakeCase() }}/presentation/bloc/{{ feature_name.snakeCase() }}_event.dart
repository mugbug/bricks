part of '{{ feature_name.snakeCase() }}_bloc.dart';

@immutable
abstract class {{ feature_name.pascalCase() }}Event extends Equatable {}

class {{ feature_name.pascalCase() }}ButtonTapped extends {{ feature_name.pascalCase() }}Event {
  @override
  List<Object?> get props => [];
}
