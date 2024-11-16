part of '../{{feature_name.snakeCase()}}_page.dart';

extension _NavigationExtension on {{feature_name.pascalCase()}}NavigationViewModel {
  void navigate(BuildContext context) {
    switch (this) {
      case ExitNavigation():
        context.pop();
    }
  }
}
