// import 'dart:convert';

// import 'package:store_app/models/product_model.dart';
// import 'package:http/http.dart' as http;

// class AllProductsService {
//   Future<List<ProductModel>> getAllProducts() async {
//     http.Response response =
//         await http.get(Uri.parse('https://fakestoreapi.com/products'));

//     if (response.statusCode == 200) {
//       List<dynamic> data = jsonDecode(response.body);
//       List<ProductModel> productsList = [];
//       for (int i = 0; i < data.length; i++) {
//         productsList.add(ProductModel.fromJson(data[i]));
//       }
//       return productsList;
//     } else {
//       throw Exception('there problem with status code${response.statusCode}');
//     }
//   }
// }

import 'dart:developer';

import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class AllProductsService {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');

    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    log('All Products Fetched');
    return productsList;
  }
}
