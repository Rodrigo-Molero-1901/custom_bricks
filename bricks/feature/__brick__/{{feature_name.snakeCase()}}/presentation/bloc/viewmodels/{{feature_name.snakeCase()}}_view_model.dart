part '{{feature_name.snakeCase()}}_navigation.dart';
part '{{feature_name.snakeCase()}}_overlay.dart';

class {{feature_name.pascalCase()}}ViewModel {
  final {{feature_name.pascalCase()}}Navigation? navigation;
  final {{feature_name.pascalCase()}}Overlay? overlay;

  {{feature_name.pascalCase()}}ViewModel.fromSuccessState({
    this.navigation,
    this.overlay,
  });
}
