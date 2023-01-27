import 'dart:convert';
import 'package:http/http.dart' as http;

import 'models/user.dart';

const String api = 'https://jsonplaceholder.typicode.com/users';

Future<List<User>> fetchUsers() async {
  try {
    final response = await http.get(
      Uri.parse(api),
    );

    //parse les données JSON
    final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();

    //convertit les données JSON en une liste d'objets User
    return parsed.map<User>((json) => User.fromJson(json)).toList();
  } catch (e) {
    rethrow;
  }
}
