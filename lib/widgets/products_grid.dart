import 'package:flutter/material.dart';
import 'package:flutter_shopapp/widgets/product_item.dart';
import '../widgets/product_item.dart';
import '../providers/products.dart';
import '../providers/product.dart';
import 'package:provider/provider.dart';

// item이 추가될때마다 불필요한 rebuild를 막아야 앱의 성능 저하를 막을 수 있음.
// 이 shopApp에서 우선적으로 업데이트 되야할 것은 쇼핑 item의 grid view임.
// 따라서 grid view만 별도로 뺀 다음에 provider를 적용시키는 것.

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;
    return GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductItem(
            id: products[index].id,
            title: products[index].title,
            imageUrl: products[index].imageUrl,
            price: products[index].price,
          );
        },
        // grid의 column 개수
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10));
  }
}
