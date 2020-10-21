import 'package:flutter/material.dart';
import 'package:flutter_shopapp/widgets/products_grid.dart';

class ProductsOcerviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Myshop'),
      ),
      // ListView와 같다 아이템이 몇개 있을지 몰라 Grid의 개수가 불분명할때 사용하는 것.
      body: ProductsGrid(),
    );
  }
}
