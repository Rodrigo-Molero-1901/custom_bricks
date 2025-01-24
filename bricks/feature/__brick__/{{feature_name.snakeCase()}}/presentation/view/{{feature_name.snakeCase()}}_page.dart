// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

import '../bloc/{{feature_name.snakeCase()}}_cubit.dart';
import '../bloc/viewmodels/{{feature_name.snakeCase()}}_view_model.dart';

part 'components/{{feature_name.snakeCase()}}_view.dart';
part 'components/navigation.dart';
part 'components/overlay.dart';
part '{{feature_name.snakeCase()}}_page_params.dart';

@injectable
class {{feature_name.pascalCase()}}Page extends StatefulWidget {
  final {{feature_name.pascalCase()}}PageParams params;
  final {{feature_name.pascalCase()}}Cubit _cubit;

  const {{feature_name.pascalCase()}}Page({
    required {{feature_name.pascalCase()}}Cubit cubit,
    @factoryParam required this.params,
  }) : _cubit = cubit;

  @override
  State<{{feature_name.pascalCase()}}Page> createState() => _{{feature_name.pascalCase()}}PageState();
}

class _{{feature_name.pascalCase()}}PageState extends State<{{feature_name.pascalCase()}}Page> {
  late {{feature_name.pascalCase()}}Cubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = widget._cubit;
    _cubit.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<{{feature_name.pascalCase()}}Cubit, {{feature_name.pascalCase()}}State>(
        bloc: _cubit,
        listener: (context, state) {
          if (state case {{feature_name.pascalCase()}}Main(:final viewModel)) {
            if (viewModel.navigation != null) {
              viewModel.navigation!.navigate(context);
            }

            if (viewModel.overlay != null) {
              viewModel.overlay!.showOverlay(context);
            }
          }
        },
        builder: (context, state) {
          return switch (state) {
            {{feature_name.pascalCase()}}Initial() => const SizedBox.shrink(),
            {{feature_name.pascalCase()}}Main(:final viewModel) => _{{feature_name.pascalCase()}}View(
                cubit: _cubit,
                viewModel: viewModel,
              ),
          };
        },
      ),
    );
  }
}
