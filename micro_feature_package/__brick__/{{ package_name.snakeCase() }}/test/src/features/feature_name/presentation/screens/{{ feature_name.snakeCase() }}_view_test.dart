import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:{{ package_name.snakeCase() }}/src/features/{{ feature_name.snakeCase() }}/presentation/bloc/{{ feature_name.snakeCase() }}_bloc.dart';
import 'package:{{ package_name.snakeCase() }}/src/features/{{ feature_name.snakeCase() }}/presentation/screens/{{ feature_name.snakeCase() }}_screen.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../helpers/pump_app.dart';

class _Mock{{ feature_name.pascalCase() }}Bloc extends Mock implements {{ feature_name.pascalCase() }}Bloc {}

class _Fake{{ feature_name.pascalCase() }}Event extends Fake implements {{ feature_name.pascalCase() }}Event {}

void main() {
  group('{{ feature_name.pascalCase() }}Screen >', () {
    final blocMock = _Mock{{ feature_name.pascalCase() }}Bloc();

    setUp(() {
      registerFallbackValue(_Fake{{ feature_name.pascalCase() }}Event());
    });

    group('when in {{ feature_name.pascalCase() }}Initial state', () {
      setUp(() {
        whenListen(
          blocMock,
          Stream<{{ feature_name.pascalCase() }}State>.fromIterable([]),
          initialState: {{ feature_name.pascalCase() }}Initial(),
        );
      });

      testWidgets(
          'and button is tapped'
          'then [{{ feature_name.pascalCase() }}ButtonTapped] should be emitted',
          (tester) async {
        await tester.pumpApp(
          child: BlocProvider<{{ feature_name.pascalCase() }}Bloc>.value(
            value: blocMock,
            child: const {{ feature_name.pascalCase() }}View(),
          ),
        );

        final button = find.byType(TextButton);
        expect(button, findsOneWidget);

        await tester.tap(button);
        await tester.pumpAndSettle();

        verify(() => blocMock.add({{ feature_name.pascalCase() }}ButtonTapped())).called(1);
      });
    });
    group('when in {{ feature_name.pascalCase() }}Loading state', () {
      setUp(() {
        whenListen(
          blocMock,
          Stream<{{ feature_name.pascalCase() }}State>.fromIterable([]),
          initialState: {{ feature_name.pascalCase() }}Loading(),
        );
      });

      testWidgets('then should show a Spinner', (tester) async {
        await tester.pumpApp(
          child: BlocProvider<{{ feature_name.pascalCase() }}Bloc>.value(
            value: blocMock,
            child: const {{ feature_name.pascalCase() }}View(),
          ),
        );

        final button = find.byType(CircularProgressIndicator);
        expect(button, findsOneWidget);
      });
    });

    group('when in {{ feature_name.pascalCase() }}Success state', () {
      setUp(() {
        whenListen(
          blocMock,
          Stream<{{ feature_name.pascalCase() }}State>.fromIterable([]),
          initialState: const {{ feature_name.pascalCase() }}Success(name: 'some fake name'),
        );
      });

      testWidgets('then should show a CozyAccordion', (tester) async {
        await tester.pumpApp(
          child: BlocProvider<{{ feature_name.pascalCase() }}Bloc>.value(
            value: blocMock,
            child: const {{ feature_name.pascalCase() }}View(),
          ),
        );

        final button = find.byType(ListView);
        expect(button, findsOneWidget);
      });
    });
  });
}
