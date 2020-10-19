import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_item.dart';

class ProductsOcerviewScreen extends StatelessWidget {
  // 앱을 만들기 위한 더미 product 변수 생성
  final List<Product> loadedProducts = [
    Product(
        id: 'p1',
        title: 'Red shirt',
        description: 'A red shirt - it is pretty red!',
        price: 29.99,
        imageUrl:
            'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_960_720.jpg'),
    Product(
        id: 'p2',
        title: 'Trousers',
        description: 'A nice pair of trousers.',
        price: 59.99,
        imageUrl:
            'https://cdn.pixabay.com/photo/2015/07/02/10/18/jeans-828693_960_720.jpg'),
    Product(
        id: 'p3',
        title: 'Yellow Scarf',
        description: 'Warm and cozy - exactly what you need for the winter',
        price: 19.99,
        imageUrl:
            'https://cdn.pixabay.com/photo/2013/11/13/18/10/plaid-210159_960_720.jpg'),
    Product(
        id: 'p4',
        title: 'A pan',
        description: 'Prepare any meal you want',
        price: 49.99,
        imageUrl:
            'https://cdn.pixabay.com/photo/2014/12/02/14/50/pan-554072_960_720.jpg')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Myshop'),
      ),
      // ListView와 같다 아이템이 몇개 있을지 몰라 Grid의 개수가 불분명할때 사용하는 것.
      body: GridView.builder(
          padding: const EdgeInsets.all(10.0),
          itemCount: loadedProducts.length,
          itemBuilder: (context, index) {
            return ProductItem(
              id: loadedProducts[index].id,
              title: loadedProducts[index].title,
              imageUrl: loadedProducts[index].imageUrl,
            );
          },
          // grid의 column 개수
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10)),
    );
  }
}
