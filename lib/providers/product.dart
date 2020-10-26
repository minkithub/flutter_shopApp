import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

// blueprint of product
class Product with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  // isFavorite는 변할 수 있는 값이기 때문에 final로 선언하면 안된다.
  bool isFavorite;

  Product(
      {@required this.id,
      @required this.title,
      @required this.description,
      @required this.price,
      @required this.imageUrl,
      this.isFavorite = false});
}
