import 'package:flutter/material.dart';
import 'package:shopkhanhtra/showCard/card_widget.dart';
class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return new HomePageState();
  }
}
class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: _media.width,
        height: _media.height,
        child: Stack(
          children: <Widget>[
            Container(
              child: Positioned(
                width: _media.width,
                height: 280,
                bottom: 0,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        print("tpped");
                      },
                      child: Container(
                        child: CardListWidget(
                          foodDetail: "Desert - Fast Food - Alcohol",
                          foodName: "Cafe De Perks",
                          vote: 4.5,
                          foodTime: "15-30 min",
                          image: "https://3c1703fe8d.site.internapcdn.net/newman/gfx/news/hires/2016/howcuttingdo.jpg",
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                      },
                      child: CardListWidget(
                        foodDetail: "Desert - Fast Food - Alcohol",
                        foodName: "Cafe De Istanbul",
                        vote: 4.5,
                        foodTime: "15-60 min",
                        image: "https://asset2.cxnmarksandspencer.com/is/image/mands/44e79d5a6007d11fd420b6c302d0f2fc0ef404da",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
