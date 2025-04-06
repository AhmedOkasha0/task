

import 'package:get_it/get_it.dart';

import '../src/app_exports.dart';

final getIt = GetIt.instance;

void initGetIt() {
  //
  getIt.registerSingletonAsync<SharedPreferences>(
      () async => await SharedPreferences.getInstance());
}
