import 'package:bot_toast/bot_toast.dart';
import 'package:client/public_providers/app_user_cubit/app_user_cubit.dart';
import 'package:client/public_providers/page_router_cubit/page_router_cubit.dart';
import 'package:client/public_providers/web_socket_cubit/web_socket_cubit.dart';
import 'package:client/router_observer.dart';
import 'package:client/routes/app_router.dart';
import 'package:client/screens/main_screen/cubit/main_screen_cubit.dart';
import 'package:client/shared/utils/shared_preference.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  sp.prefs = await SharedPreferences.getInstance();
  runApp(EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('vi')],
      startLocale: const Locale('vi'),
      fallbackLocale: const Locale('vi'),
      path: "assets/translations",
      child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final botToastBuilder = BotToastInit();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PageRouterCubit()),
        BlocProvider(create: (context) => AppUserCubit()),
        BlocProvider(create: (context) => MainScreenCubit()),
        BlocProvider(create: (context) => WebSocketCubit(context: context)),
      ],
      child: Builder(builder: (context) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          useInheritedMediaQuery: true,
          locale: context.locale,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          initialRoute: Routes.connectToServer,
          routes: Routes.routes,
          builder: (context, child) => botToastBuilder(context, child),
          navigatorObservers: [
            BotToastNavigatorObserver(),
            AppRouteObserver(context)
          ],
        );
      }),
    );
  }
}
