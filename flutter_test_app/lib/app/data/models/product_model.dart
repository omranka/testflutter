import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

class Product {
  Product({
    required this.name,
    required this.price,
    required this.image,
    required this.selected,
  });

  String name;
  double price;
  String image;
  bool selected;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        name: json["name"],
        price: json["price"],
        image: json["image"],
        selected: json["selected"].obs,
      );
}
