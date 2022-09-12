import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:next_flutter/controller/product_controller.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({Key? key}) : super(key: key);

  final productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("All Product List"),
        actions: [
          Row(
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart),
                label: const Text("0"),
              )
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: GetBuilder<ProductController>(
              builder: (controller) => ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Image.asset(
                          productController.productData[index].productImage
                              .toString(),
                          height: 300,
                          width: 300,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              productController.productData[index].productName
                                  .toString(),
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                child: const Icon(Icons.favorite))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              productController.productData[index].price
                                  .toString(),
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text("Add to Cart"))
                          ],
                        )
                      ],
                    ),
                  );
                },
                itemCount: controller.productData.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}
