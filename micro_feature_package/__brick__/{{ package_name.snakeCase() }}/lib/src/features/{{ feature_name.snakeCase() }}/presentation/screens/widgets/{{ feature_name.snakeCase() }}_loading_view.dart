part of '../{{ feature_name.snakeCase() }}_screen.dart';

class _{{ feature_name.pascalCase() }}LoadingView extends StatelessWidget {
  const _{{ feature_name.pascalCase() }}LoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }
}
