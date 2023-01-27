import 'package:test/test.dart';

import 'package:app/models/user.dart';

void main() async {
  final Map<String, dynamic> json = {"id": 1, "name": "John Doe"};

  test("""La méthode factory de User doit retourner un objet User
      à partir d'une map simulant une valeur JSON""",
      () => expect(User.fromJson(json).runtimeType, User));

  final Map<String, dynamic> jsonWithNullValues = {"id": null, "name": null};

  test("""La méthode factory de User doit retourner un objet User à partir 
      d'une map simulant une valeur JSON même si des valeurs sont nulles""",
      () => expect(User.fromJson(jsonWithNullValues).runtimeType, User));

  final User johnDoe = User(id: 7, name: "John Doe");

  test("""La méthode sayHello de User doit retourner
       "Hello, my name is John Doe" """,
      () => expect(johnDoe.sayHello(), "Hello, my name is John Doe"));
}
