import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final injector = GetIt.instance;

@InjectableInit(preferRelativeImports: true)
Future<void> configureModuleDependencies() async => injector.init();