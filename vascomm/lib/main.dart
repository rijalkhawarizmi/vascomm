import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:vascomm/core/route/routes.dart';
import 'core/services/injection_container.dart';
import 'src/authentication/presentation/bloc/authentication_bloc.dart';
import 'src/authentication/presentation/views/login_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => sls<AuthenticationBloc>(),
          ),
        ],
        child: MaterialApp.router(
            routerConfig:routerApp ,
            theme: ThemeData(
              visualDensity: VisualDensity.adaptivePlatformDensity),
            debugShowCheckedModeBanner: false,
          ));
  }
}
