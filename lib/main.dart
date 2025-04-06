import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/injector/injector.dart';
import 'package:task/core/network/cache_helper.dart';

import 'core/helper/bloc_observer.dart';
import 'core/src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  initGetIt();
  Bloc.observer = AppBlocObserver();
  Future.wait([
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]),
  ]).then((value) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness:
            Platform.isIOS ? Brightness.light : Brightness.dark,
      ),
    );
    runApp(const MyApp());
  });
}
