import 'package:commerce_blue/application/home/home_bloc.dart';
import 'package:commerce_blue/core/dependency_injection/injectable.dart';
import 'package:commerce_blue/presentation/main_page/screen_main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const SAVE_KEY_NAME = "UserLoggedIn";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjectable();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<HomeBloc>(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: Color.fromARGB(255, 19, 43, 62),
          ),
          home: ScreenMainPage(),
        ));
  }
}
