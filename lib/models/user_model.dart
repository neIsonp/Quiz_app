class UserModel {
  final String name;
  final String email;
  int score;

  UserModel({
    required this.name,
    required this.email,
    required this.score,
  });

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'score': score,
      };

  static UserModel fromJson(Map<String, dynamic> json) => UserModel(
        name: json['name'],
        email: json['email'],
        score: json['score'],
      );
}
