class UserModel {
  final String name;
  final String email;
  int score;
  bool quiz1, quiz2, quiz3, quiz4, quiz5;

  UserModel({
    required this.name,
    required this.email,
    required this.score,
    required this.quiz1,
    required this.quiz2,
    required this.quiz3,
    required this.quiz4,
    required this.quiz5,
  });

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'score': score,
        'quiz1': quiz1,
        "quiz2": quiz2,
        "quiz3": quiz3,
        "quiz4": quiz4,
        "quiz5": quiz5,
      };

  static UserModel fromJson(Map<String, dynamic> json) => UserModel(
        name: json['name'],
        email: json['email'],
        score: json['score'],
        quiz1: json['quiz1'],
        quiz2: json['quiz2'],
        quiz3: json['quiz3'],
        quiz4: json['quiz4'],
        quiz5: json['quiz5'],
      );
}
