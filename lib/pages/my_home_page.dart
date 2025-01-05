import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:nusacode_flutter_3/blocs/counter/counter_cubit.dart';
import 'package:nusacode_flutter_3/blocs/counter/counter_state.dart';
import 'package:nusacode_flutter_3/blocs/theme/theme_cubit.dart';
import 'package:nusacode_flutter_3/commons/extensions/context_extentions.dart';
import 'package:nusacode_flutter_3/commons/extensions/int_extensions.dart';
import 'package:nusacode_flutter_3/commons/routes.dart';
import 'package:nusacode_flutter_3/getx/counter_controller.dart';
import 'package:nusacode_flutter_3/pages/bottom_navbar/bottom_navbar_page.dart';
import 'package:nusacode_flutter_3/widgets/counter_text_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? footballPlayer;

  final cubit = CounterCubit();
  final counterController = CounterController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<CounterCubit, CounterState>(
            bloc: cubit,
            listener: (context, state) {
              if (state.counter == 3) {}
            }),
      ],
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(widget.title),
          ),
          body: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BlocBuilder<CounterCubit, CounterState>(
                    bloc: cubit,
                    buildWhen: (p, c) => p.counter != c.counter,
                    builder: (context, state) {
                      print('state.counter: ${state.counter}');
                      return CounterText(
                        counter: state.counter,
                      );
                    }),
                BlocBuilder<CounterCubit, CounterState>(
                    bloc: cubit,
                    buildWhen: (p, c) => p.counter2 != c.counter2,
                    builder: (context, state) {
                      print('state.counter2: ${state.counter2}');
                      return CounterText(
                        counter: state.counter2,
                      );
                    }),
                Obx(() => CounterText(
                      counter: counterController.count.value,
                    )),
                40.height,
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 16,
                        children: [
                          Text("Theme Switcher"),
                          BlocBuilder<ThemeCubit, ThemeMode>(
                              builder: (context, themeMode) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              spacing: 16,
                              children: [
                                IconButton.outlined(
                                    onPressed: () => context
                                        .read<ThemeCubit>()
                                        .switchTheme(ThemeMode.dark),
                                    icon: Icon(themeMode == ThemeMode.dark
                                        ? Icons.dark_mode
                                        : Icons.dark_mode_outlined)),
                                IconButton.outlined(
                                    onPressed: () => context
                                        .read<ThemeCubit>()
                                        .switchTheme(ThemeMode.light),
                                    icon: Icon(Icons.light_mode)),
                              ],
                            );
                          })
                        ],
                      ),
                    ),
                  ),
                ),
                40.height,
                FilledButton(
                    onPressed: () {
                      context.push(const BottomNavbarPage());
                    },
                    child: Text("Bottom Navigation Bar")),
                FilledButton(
                    onPressed: () {
                      context.pushNamed(AppRoutes.exampleButton);
                    },
                    child: Text("Example Button Page")),
                FilledButton(
                    onPressed: openFootballPlayersPage,
                    child: Text("Footbal Players: $footballPlayer")),
              ],
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 16,
            children: [
              FloatingActionButton(
                onPressed: () => cubit.increment(),
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: () => cubit.increment2(),
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: () => counterController.increment(),
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
            ],
          )),
    );
  }

  void openFootballPlayersPage() async {
    final result = await context.pushNamed(AppRoutes.footballPlayer,
        arguments: footballPlayer);

    if (result != null) {
      setState(() {
        footballPlayer = result as String;
      });
    }
  }
}
