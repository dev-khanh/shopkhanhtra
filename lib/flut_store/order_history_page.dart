import 'package:flutter/material.dart';
import 'package:shopkhanhtra/flut_store/order_history_widget.dart';

class OrderHistoryPage extends StatefulWidget {
  @override
  _OrderHistoryPageState createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('My Orders'),
        leading: BackButton(
        ),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          OrderHistoryWidget()
        ],
      ),
    );
  }
}
