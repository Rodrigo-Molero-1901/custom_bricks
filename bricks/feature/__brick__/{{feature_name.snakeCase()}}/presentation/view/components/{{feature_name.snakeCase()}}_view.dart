part of '../{{feature_name.snakeCase()}}_page.dart';

class _{{feature_name.pascalCase()}}View extends StatelessWidget {
  final {{feature_name.pascalCase()}}Cubit cubit;
  final {{feature_name.pascalCase()}}ViewModel viewModel;

  const _{{feature_name.pascalCase()}}View({
    required this.cubit,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
