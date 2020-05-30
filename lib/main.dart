import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopkhanhtra/total/const.dart';
import 'package:shopkhanhtra/total/AppState.dart';
import 'package:shopkhanhtra/chat/screen/login_screen.dart';
import 'package:shopkhanhtra/chat/screen/home_screen.dart';
void main() {
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => AppState()),
        ],
        child: MyApp(),
      )
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop Khánh Trà',
      theme: ThemeData(
        primaryColor: themeColor,
      ),
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        print('DEVK route for ${settings.name}');
        var routes = <String, WidgetBuilder>{
          "/": (ctx) => LoginScreen(title: 'Shop Khánh Trà'),
          "/home": (ctx) => HomeScreen(currentUserId: settings.arguments),
        };
        WidgetBuilder builder = routes[settings.name];
        return MaterialPageRoute(builder: (ctx) => builder(ctx));
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
