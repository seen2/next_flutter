import 'package:get/state_manager.dart';
import 'package:next_flutter/model/product_model.dart';

class ProductController extends GetxController {
  List<Product> productData = [];
  List<Product> cartItems= List<Product>.empty().obs;

  @override
  void onInit() {
    super.onInit();
    fetchProductData();
  }

  addProductToCart(Product product){
    cartItems.add(product);
  }

  int get numberOfCartItems => cartItems.length;

  double get totalPrice =>cartItems.fold<double>(0,(previousValue, element) => previousValue+element.price);

  fetchProductData() async {
    await Future.delayed(const Duration(seconds: 3));

    List<Product> serverResponse = [
      Product(
        id: 1,
        price: 499,
        productDescription: 'some description about product',
        productImage: 'assets/images/Blue_Tshirt.jpg',
        productName: 'T-Shirt',
        favorite: false,
      ),
      Product(
        id: 2,
        price: 799,
        productDescription: 'some description about product',
        productImage: 'assets/images/shoes.jpg',
        productName: 'Shoes',
        favorite: false,
      ),
      Product(
        id: 3,
        price: 1000,
        productDescription: 'some description about product',
        productImage: 'assets/images/jeans.png',
        productName: 'Jeans',
        favorite: false,
      ),
    ];
    productData.assignAll(serverResponse);
    update();
  }
}
