import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:dio/dio.dart';

import 'models/user.dart';

const String api = 'https://jsonplaceholder.typicode.com/users';

/* Obtention de données depuis une API REST avec http */
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

/* Obtention de données depuis une API REST avec Dio */
Future<List<User>> getUsers() async {
  try {
    final response = await Dio().get(api);

    //convertit les données JSON en une liste d'objets User
    return response.data.map<User>((json) => User.fromJson(json)).toList();
  } catch (e) {
    rethrow;
  }
}
