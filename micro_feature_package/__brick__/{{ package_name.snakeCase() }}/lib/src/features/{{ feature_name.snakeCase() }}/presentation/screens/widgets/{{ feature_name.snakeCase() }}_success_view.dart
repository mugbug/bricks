part of '../{{ feature_name.snakeCase() }}_screen.dart';

class _{{ feature_name.pascalCase() }}SuccessView extends StatelessWidget {
  const _{{ feature_name.pascalCase() }}SuccessView({
    Key? key,
    required this.state,
  }) : super(key: key);

  final {{ feature_name.pascalCase() }}Success state;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: ['This', 'is', 'a', 'list', 'example', '🦄']
          .map((e) => Text(e))
          .toList(),
    );
  }
}
