import 'package:equatable/equatable.dart';

abstract class {{ feature_name.pascalCase() }}Exception extends Equatable implements Exception {
  final String description;

  const {{ feature_name.pascalCase() }}Exception(this.description);
  
  @override
  List<String?> get props => [description];

  @override
  String toString() => '$runtimeType($description)';
}

class {{ feature_name.pascalCase() }}ButtonTappedException extends {{ feature_name.pascalCase() }}Exception {
  const {{ feature_name.pascalCase() }}ButtonTappedException(super.description);
  
  @override
  List<String?> get props => [description];
}
