import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  static const String id = 'productScreen';

  // final String title;
  // ProductDetailScreen({this.title});

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    // Provider.of<Products>(context) : Provider로 접근하기 위한 통로
    // listen = false를 통해 notifylistner를 무력화 시키는 것.
    // 따라서 데이터가 바뀌어도 rebuild되지 않는다.
    final loadedProduct =
        Provider.of<Products>(context, listen: false).findById(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
    );
  }
}
