import 'dart:convert';

import 'package:http/http.dart';
import 'package:getx_crud_starter_example/app/data/models/user.dart';

class UserRepository {
  String endPoint = "https://reqres.in/api/users?page=2";

  Future<List<User>> getUsers() async {
    Response response = await get(Uri.parse(endPoint));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['data'];
      return result.map((e) => User.fromJson((e))).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
