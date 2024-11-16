part of '{{feature_name.snakeCase()}}_cubit.dart';

sealed class {{feature_name.pascalCase()}}State {}

class {{feature_name.pascalCase()}}Initial extends {{feature_name.pascalCase()}}State {}

class {{feature_name.pascalCase()}}Main extends {{feature_name.pascalCase()}}State {
  {{feature_name.pascalCase()}}ViewModel viewModel;

  {{feature_name.pascalCase()}}Main({required this.viewModel});
}
