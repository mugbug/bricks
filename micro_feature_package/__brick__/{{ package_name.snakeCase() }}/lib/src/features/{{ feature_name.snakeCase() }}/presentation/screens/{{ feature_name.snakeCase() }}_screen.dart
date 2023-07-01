import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/{{ feature_name.snakeCase() }}_bloc.dart';

part 'widgets/{{ feature_name.snakeCase() }}_initial_view.dart';
part 'widgets/{{ feature_name.snakeCase() }}_loading_view.dart';
part 'widgets/{{ feature_name.snakeCase() }}_success_view.dart';

class {{ feature_name.pascalCase() }}Screen extends StatelessWidget {
  const {{ feature_name.pascalCase() }}Screen({
    super.key,
    required this.bloc,
  });

  final {{ feature_name.pascalCase() }}Bloc bloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<{{ feature_name.pascalCase() }}Bloc>.value(
      value: bloc,
      child: const {{ feature_name.pascalCase() }}View(),
    );
  }
}

class {{ feature_name.pascalCase() }}View extends StatelessWidget {
  const {{ feature_name.pascalCase() }}View({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('{{ feature_name.pascalCase() }}')),
      body: BlocBuilder<{{ feature_name.pascalCase() }}Bloc, {{ feature_name.pascalCase() }}State>(
        builder: (context, state) {
          if (state is {{ feature_name.pascalCase() }}Loading) {
            return const _{{ feature_name.pascalCase() }}LoadingView();
          }

          if (state is {{ feature_name.pascalCase() }}Success) {
            return _{{ feature_name.pascalCase() }}SuccessView(state: state);
          }

          return const _{{ feature_name.pascalCase() }}InitialView();
        },
      ),
    );
  }
}
