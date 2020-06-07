import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopkhanhtra/base/const.dart';
import 'package:shopkhanhtra/base/AppState.dart';
import 'package:shopkhanhtra/chat/screen/login_screen.dart';
import 'package:shopkhanhtra/chat/screen/home_screen.dart';
import 'package:shopkhanhtra/home/full_images.dart';
import 'package:shopkhanhtra/home/main_screen.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
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
      initialRoute: '/login',
      onGenerateRoute: (RouteSettings settings) {
        print('DEVK route for ${settings.name}');
        var routes = <String, WidgetBuilder>{
          "/": (ctx) => MainScreen(),
          "/login": (ctx) => LoginScreen(title: 'Shop Khánh Trà'),
          "/home": (ctx) => HomeScreen(currentUserId: settings.arguments),
          "/fullImages": (ctx) => Fullimages(),
        };
        WidgetBuilder builder = routes[settings.name];
        return MaterialPageRoute(builder: (ctx) => builder(ctx));
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
