import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:nusacode_flutter_3/blocs/theme/theme_cubit.dart';
import 'package:nusacode_flutter_3/commons/routes.dart';
import 'package:nusacode_flutter_3/commons/utils/singleton.dart';

void main() {
  setupSingleton();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeCubit(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode>(builder: (context, themeMode) {
        return GetMaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: themeMode,
          initialRoute: AppRoutes.product,
          routes: routes,
        );
      }),
    );
  }
}
