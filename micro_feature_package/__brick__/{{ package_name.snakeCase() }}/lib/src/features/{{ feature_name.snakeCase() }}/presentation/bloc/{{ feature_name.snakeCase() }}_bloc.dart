import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:{{ package_name.snakeCase() }}/src/features/{{ feature_name.snakeCase() }}/business_logic/use_case/{{ feature_name.snakeCase() }}_use_case.dart';
import 'package:{{ package_name.snakeCase() }}/src/features/{{ feature_name.snakeCase() }}/presentation/bloc/{{ feature_name.snakeCase() }}_exception.dart';

part '{{ feature_name.snakeCase() }}_event.dart';
part '{{ feature_name.snakeCase() }}_state.dart';

class {{ feature_name.pascalCase() }}Bloc extends Bloc<{{ feature_name.pascalCase() }}Event, {{ feature_name.pascalCase() }}State> {
  final {{ feature_name.pascalCase() }}UseCase _{{ feature_name.camelCase() }}UseCase;

  {{ feature_name.pascalCase() }}Bloc({
    required {{ feature_name.pascalCase() }}UseCase {{ feature_name.camelCase() }}UseCase,
  })  : _{{ feature_name.camelCase() }}UseCase = {{ feature_name.camelCase() }}UseCase,
        super({{ feature_name.pascalCase() }}Initial()) {
    on<{{ feature_name.pascalCase() }}ButtonTapped>(_on{{ feature_name.pascalCase() }}ButtonTapped);
  }

  Future<void> _on{{ feature_name.pascalCase() }}ButtonTapped(
    {{ feature_name.pascalCase() }}ButtonTapped event,
    Emitter<{{ feature_name.pascalCase() }}State> emit,
  ) async {
    emit({{ feature_name.pascalCase() }}Loading());

    try {
      final entity = await _{{ feature_name.camelCase() }}UseCase.fetch{{ feature_name.pascalCase() }}();

      emit({{ feature_name.pascalCase() }}Success(name: entity.name));

    } catch (error, stackTrace) {
      emit({{ feature_name.pascalCase() }}Failure());
    }
  }
}
