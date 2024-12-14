import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'viewmodels/{{feature_name.snakeCase()}}_view_model.dart';

part '{{feature_name.snakeCase()}}_state.dart';

@injectable
class {{feature_name.pascalCase()}}Cubit extends Cubit<{{feature_name.pascalCase()}}State> {
  {{feature_name.pascalCase()}}Cubit() : super({{feature_name.pascalCase()}}Initial());

  Future<void> initialize() async {
    _emitMain();
  }

  void _emitMain({
    {{feature_name.pascalCase()}}Navigation? navigation,
    {{feature_name.pascalCase()}}Overlay? overlay,
  }) {
    emit(
      {{feature_name.pascalCase()}}Main(
        viewModel: {{feature_name.pascalCase()}}ViewModel.fromSuccessState(
          navigation: navigation,
          overlay: overlay,
        ),
      ),
    );
  }
}
