import '../exports.dart';

List<GetPage> getPages() {
  return [
    GetPage(
      name: WelcomeScreen.routeName,
      page: () => WelcomeScreen(),
    ),
    GetPage(
      name: HomeScreen.routeName,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: SingleItemScreen.routeName,
      page: () => SingleItemScreen(),
    ),
  ];
}