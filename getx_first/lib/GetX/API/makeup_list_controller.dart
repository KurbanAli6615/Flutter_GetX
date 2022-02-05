import 'package:get/get.dart';
import 'package:getx_first/GetX/API/Model.dart';
import 'package:getx_first/GetX/API/api_service.dart';

class MakeUpController extends GetxController {
  var isLoading = true.obs;
  var productList = <ProductModel>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await ApiService.fetchProducts();
      productList.assignAll(products);
    } finally {
      isLoading(false);
    }
  }
}
