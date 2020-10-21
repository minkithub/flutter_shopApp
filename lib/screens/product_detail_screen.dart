import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  static const String id = 'productScreen';

  // final String title;
  // ProductDetailScreen({this.title});

  @override
  Widget build(BuildContext context) {
    final productTitle = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(productTitle),
      ),
    );
  }
}
