import 'dart:math';

import 'package:flutter_test_app/app/data/models/product_model.dart';

class ProductService {
  Future<List<Product>> getAllProduct() async {
    await Future.delayed(const Duration(seconds: 3));
    List<Product> list = [];

    for (int index = 1; index <= 20; index++) {
      list.add(Product(
          name: "product${index}",
          price: Random().nextInt(100).toDouble(),
          image: "assets/images/product/img${index}.png",
          selected: true));
    }

    return list;
  }
}
