import 'package:flutter_test_app/app/data/service/category_service.dart';
import 'package:flutter_test_app/app/routes/app_pages.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final CategoryService apiService = CategoryService();
  var isLoading = true.obs;

  RxList listGategory = List.empty(growable: true).obs;

  @override
  void onInit() {
    getAllCategory();
    super.onInit();
  }

  Future<void> getAllCategory() async {
    try {
      isLoading(true);
      listGategory.value = await apiService.getAllCategory();
    } finally {
      isLoading(false);
    }
  }

  void navigateToProduct() {
    Get.toNamed(Routes.PRODUCT);
  }
}
