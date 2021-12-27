
import 'package:flutter_test_app/app/data/models/category_model.dart';


class CategoryService{
  Future<List<Category>> getAllCategory() async {
    await Future.delayed(const Duration(seconds: 3));
    List<Category> listCategory=[];

    listCategory.add(Category(name: "Jacket", image: "assets/images/category/img1.png",selected:false));
    listCategory.add(Category(name: "Handbag", image: "assets/images/category/img2.png",selected:false));
    listCategory.add(Category(name: "Spectacle", image: "assets/images/category/img3.png",selected:false));
    listCategory.add(Category(name: "Kimono", image: "assets/images/category/img4.png",selected:false));
    listCategory.add(Category(name: "Gloves", image: "assets/images/category/img5.png",selected:false));
    listCategory.add(Category(name: "Lab Coat", image: "assets/images/category/img6.png",selected:false));
    listCategory.add(Category(name: "Dress", image: "assets/images/category/img7.png",selected:false));
    listCategory.add(Category(name: "Flat Shoes", image: "assets/images/category/img8.png",selected:false));
    listCategory.add(Category(name: "Jeans", image: "assets/images/category/img9.png",selected:false));
    listCategory.add(Category(name: "Necktie", image: "assets/images/category/img10.png",selected:false));


    return listCategory;
  }
}