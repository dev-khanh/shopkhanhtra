import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopkhanhtra/bag/bag_page.dart';
import 'package:shopkhanhtra/base/const.dart';
import 'package:shopkhanhtra/base/AppState.dart';
import 'package:shopkhanhtra/card_images_instagram/images_instagram.dart';
import 'package:shopkhanhtra/chat/screen/login_screen.dart';
import 'package:shopkhanhtra/chat/screen/home_screen.dart';
import 'package:shopkhanhtra/flut_store/cart.dart';
import 'package:shopkhanhtra/flut_store/details.dart';
import 'package:shopkhanhtra/flut_store/fruit_app_home_page.dart';
import 'package:shopkhanhtra/flut_store/order_history_page.dart';
import 'package:shopkhanhtra/food/pages/HomePage.dart';
import 'package:shopkhanhtra/home/full_images.dart';
import 'package:shopkhanhtra/home/main_screen.dart';
import 'package:shopkhanhtra/movies/main.dart';
import 'package:shopkhanhtra/showCard/home_page.dart';
import 'package:shopkhanhtra/showCard/show_card.dart';
import 'package:shopkhanhtra/ui/cook_details_page.dart';
import 'package:shopkhanhtra/ui/list_recommen.dart';

import 'led/text_led.dart';
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
      initialRoute: '/movies',
      onGenerateRoute: (RouteSettings settings) {
        print('DEVK route for ${settings.name}');
        var routes = <String, WidgetBuilder>{
          "/": (ctx) => MainScreen(),
          "/login": (ctx) => LoginScreen(title: 'Shop Khánh Trà'),
          "/home": (ctx) => HomeScreen(currentUserId: settings.arguments),
          "/fullImages": (ctx) => Fullimages(),
          "/imagesInstagram": (ctx) => ImagesInstagram(),
          "/textLed": (ctx) => TextLed(),
          '/ShowCard': (ctx) => ShowCard(),
          '/homePage': (ctx) => HomePage(),
          '/listRecommen': (ctx) => ListRecommen(),
          '/cook_detailsPage': (ctx) => CookDetailsPage(settings.arguments),
          '/bag': (ctx) => BagPage(),
          '/fruitAppHomePage': (ctx) => FruitAppHomePage(),
          '/cart': (ctx) => FruitAppCartView(),
          '/details': (ctx) => FruitAppFruitDetails(fruit: settings.arguments),
          '/order': (ctx) => OrderHistoryPage(),
          '/home_page_food': (ctx) => HomePageFood(),
          '/movies': (ctx) => MyAppMovies()
        };
        WidgetBuilder builder = routes[settings.name];
        return MaterialPageRoute(builder: (ctx) => builder(ctx));
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
