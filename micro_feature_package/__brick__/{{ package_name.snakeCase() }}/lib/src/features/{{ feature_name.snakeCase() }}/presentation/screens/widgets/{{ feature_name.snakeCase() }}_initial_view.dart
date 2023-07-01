part of '../{{ feature_name.snakeCase() }}_screen.dart';

class _{{ feature_name.pascalCase() }}InitialView extends StatelessWidget {
  const _{{ feature_name.pascalCase() }}InitialView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Text('Tap here'),
        onPressed: () {
          context.read<{{ feature_name.pascalCase() }}Bloc>().add(
                {{ feature_name.pascalCase() }}ButtonTapped(),
              );
        },
      ),
    );
  }
}
