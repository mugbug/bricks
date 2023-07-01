import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:{{ package_name.snakeCase() }}/src/features/{{ feature_name.snakeCase() }}/business_logic/entities/{{ feature_name.snakeCase() }}_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part '{{ feature_name.snakeCase() }}_dto.g.dart';

@immutable
@JsonSerializable()
class {{ feature_name.pascalCase() }}DTO extends Equatable implements {{ feature_name.pascalCase() }}Entity {
  final int id;

  @override
  final String name;

  const {{ feature_name.pascalCase() }}DTO({
    required this.id,
    required this.name,
  });

  factory {{ feature_name.pascalCase() }}DTO.fromJson(Map<String, dynamic> json) =>
      _${{ feature_name.pascalCase() }}DTOFromJson(json);
  Map<String, dynamic> toJson() => _${{ feature_name.pascalCase() }}DTOToJson(this);

  @override
  List<Object?> get props => [id, name];
}
