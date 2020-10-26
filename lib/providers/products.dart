// product 정보를 provider로 불러오는 작업.

import 'package:flutter/material.dart';
import 'product.dart';

class Products with ChangeNotifier {
  // items을 지역변수로 설정하여 외부에서의 접근을 허용하지 않음
  List<Product> _items = [
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

  List<Product> get items {
    return _items;
  }

  Product findById(String id) {
    return _items.firstWhere((element) => element.id == id);
  }

  // 본격적으로 provider를 사용하는 것으로써 items의 변화를 캐치하는 함수.
  void addProduct() {
    notifyListeners();
  }
}
