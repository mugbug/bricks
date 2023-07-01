import 'package:equatable/equatable.dart';

class {{ feature_name.pascalCase() }}Entity extends Equatable {
  final String name;

  const {{ feature_name.pascalCase() }}Entity({
    required this.name,
  });

  @override
  List<Object?> get props => [
    name,
  ];
}
