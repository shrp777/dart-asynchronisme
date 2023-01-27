class User {
  final int? id;
  final String? name;

  const User({required this.id, required this.name});

  String sayHello() {
    return 'Hello, my name is ${name!}';
  }

  //retourne un objet User à partir d'une Map composée de clé / valeurs
  factory User.fromJson(Map<String, dynamic> json) {
    return User(id: json['id'], name: json['name']);
  }
}
