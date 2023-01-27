import 'package:app/app.dart' as app;

import 'package:app/models/user.dart';

void main(List<String> arguments) async {
  final List<User> users = await app.fetchUsers();

  for (final User user in users) {
    print(user.sayHello());
  }
}
