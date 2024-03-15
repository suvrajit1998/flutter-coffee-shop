import 'exports.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee shop',
      initialRoute: WelcomeScreen.routeName,
      getPages: getPages(),
      theme: ThemeData(scaffoldBackgroundColor: Color(0XFF212325)),
      scrollBehavior: MyCustomScrollBehavior(),
      themeMode: ThemeMode.light,
    );
  }
}
