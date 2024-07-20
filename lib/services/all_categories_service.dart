// import 'dart:convert';

// import 'package:http/http.dart' as http;

// class ALLCategoriesService {
//   Future<List<dynamic>> getAllCategories() async {
//     http.Response response = await http
//         .get(Uri.parse('https://fakestoreapi.com/products/categories'));

//     if (response.statusCode == 200) {
//       List<dynamic> data = jsonDecode(response.body);
//       return data;
//     } else {
//       throw Exception('there problem with status code${response.statusCode}');
//     }
//   }
// }
import 'package:store_app/helper/api.dart';

class ALLCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');
    return data;
  }
}
