import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:nusacode_flutter_3/blocs/theme/theme_cubit.dart';
import 'package:nusacode_flutter_3/commons/routes.dart';
import 'package:nusacode_flutter_3/commons/utils/singleton.dart';
import 'package:nusacode_flutter_3/data/local_storage/theme_local_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupSingleton();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeCubit(
            Get.find<ThemeLocalStorage>()
          )..init(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode>(builder: (context, themeMode) {
        return GetMaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: themeMode,
          initialRoute: AppRoutes.home,
          routes: routes,
        );
      }),
    );
  }
}
