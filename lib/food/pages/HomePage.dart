import 'package:flutter/material.dart';
import 'package:shopkhanhtra/food/animation/ScaleRoute.dart';
import 'package:shopkhanhtra/food/pages/SignInPage.dart';
import 'package:shopkhanhtra/food/widgets/BestFoodWidget.dart';
import 'package:shopkhanhtra/food/widgets/BottomNavBarWidget.dart';
import 'package:shopkhanhtra/food/widgets/PopularFoodsWidget.dart';
import 'package:shopkhanhtra/food/widgets/SearchWidget.dart';
import 'package:shopkhanhtra/food/widgets/TopMenus.dart';

class HomePageFood extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePageFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0,
        title: Text(
          "What would you like to eat?",
          style: TextStyle(
              color: Color(0xFF3a3737),
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        brightness: Brightness.light,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Color(0xFF3a3737),
              ),
              onPressed: () {Navigator.push(context, ScaleRoute(page: SignInPage()));})
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SearchWidget(),
            TopMenus(),
            PopularFoodsWidget(),
            BestFoodWidget(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
