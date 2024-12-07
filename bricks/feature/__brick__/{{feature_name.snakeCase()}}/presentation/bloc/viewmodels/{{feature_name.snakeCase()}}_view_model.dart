part '{{feature_name.snakeCase()}}_navigation_view_model.dart';
part '{{feature_name.snakeCase()}}_overlay_view_model.dart';

class {{feature_name.pascalCase()}}ViewModel {
  final {{feature_name.pascalCase()}}NavigationViewModel? navigation;
  final {{feature_name.pascalCase()}}OverlayViewModel? overlay;

  {{feature_name.pascalCase()}}ViewModel.fromSuccessState({
    this.navigation,
    this.overlay,
  });
}
