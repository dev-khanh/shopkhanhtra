import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_advanced_networkimage/provider.dart';
import 'package:flutter_advanced_networkimage/transition.dart';
import 'package:shopkhanhtra/base/const.dart';

class CardListWidget extends StatefulWidget {
  final String image;
  final String foodName;
  final String foodDetail;
  final String foodTime;
  final double vote;
  CardListWidget(
      {this.image,
      this.foodDetail,
      this.foodName,
      this.vote,
      this.foodTime});
  @override
  CardListWidgetState createState() {
    return new CardListWidgetState();
  }
}
class CardListWidgetState extends State<CardListWidget> {
  bool _isSolid = false;
  void _toggleHeart() {
    setState(() {
      _isSolid = !_isSolid;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 20,
        left: 20,
      ),
      child: Material(
        elevation: 4,
        shadowColor: Colors.white54,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width - 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: TransitionToImage(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        image: AdvancedNetworkImage(
                          widget.image,
                          useDiskCache: true,
                        ),
                        fit: BoxFit.cover,
                        placeholder: const Icon(Icons.refresh),
                      ),
                    ),

                    Positioned(
                      bottom: 0,
                      left: 0,
                      width: MediaQuery.of(context).size.width - 80,
                      height: 40,
                      child: Container(
                        padding: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.transparent,
                              Colors.black87,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 5,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    height: 18,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.lightGreen,
                                    ),
                                    child: Text(
                                      widget.vote.toString(),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 16,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 16,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 16,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 16,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 16,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "(11)",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Icon(
                                    FontAwesomeIcons.clock,
                                    size: 12,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    widget.foodTime,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontFamily: "Poppins",
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              widget.foodName,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              widget.foodDetail,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: "Poppins",
                                  color: greyColor,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        FontAwesomeIcons.dollarSign,
                        size: 12,
                        color: orangeColor,
                      ),
                      Icon(
                        FontAwesomeIcons.dollarSign,
                        size: 12,
                        color: orangeColor,
                      ),
                      Icon(
                        FontAwesomeIcons.dollarSign,
                        size: 12,
                        color: greyColor,
                      ),
                      Icon(
                        FontAwesomeIcons.dollarSign,
                        size: 12,
                        color: greyColor,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
