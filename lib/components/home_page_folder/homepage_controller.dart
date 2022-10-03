import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import '../home_page_folder/product.dart';

// homepage product_list control by getX reactive

class HomepageController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData() async {
    await Future.delayed(Duration(seconds: 2));
    var productData = [
      Product(
          id: 'id', productName: 'productName', status: 'status', shelfLife: 1),
      // id, productName, status, shelfLife getX로 firestore 에서의 값 가져오는거 입력해야함...
    ];
    products.assignAll(productData);
    //현재 리스트 내에 있는 모든 아이템을 인자값으로 받는 아이템으로 대체해줌 
  }
}
