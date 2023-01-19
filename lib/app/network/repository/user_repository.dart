import 'dart:convert';

import 'package:http/http.dart';
import 'package:getx_crud_starter_example/app/data/models/user.dart';

class UserRepository {
  String endPoint = "https://reqres.in/api/users?page=2";

  Future<User> getUsers() async {
    Response response = await get(Uri.parse(endPoint));
    if (response.statusCode == 200) {
      final  result = jsonDecode(response.body);
      print('jsondata list ${result.first.toString()}');
      return result.map((e) => User.fromJson((e)));
    } else {
      print('error rest ${response.reasonPhrase}');
      throw Exception(response.reasonPhrase);
    }
  }
}
