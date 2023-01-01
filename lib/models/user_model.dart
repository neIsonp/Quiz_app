class UserModel {
  final String name;
  final String email;
  int pontos;

  UserModel({
    required this.name,
    required this.email,
    required this.pontos,
  });

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'pontos': pontos,
      };

  static UserModel fromJson(Map<String, dynamic> json) => UserModel(
        name: json['name'],
        email: json['email'],
        pontos: json['pontos'],
      );
}
