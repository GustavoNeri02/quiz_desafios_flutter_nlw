import 'dart:convert';

class UserModel {
  final String name;
  final int score;
  final String photoUrl;

  UserModel({required this.name, this.score = 0, required this.photoUrl});

  Map<String, dynamic> toMap() {
    return {'name': name, 'score': score, 'photoUrl': photoUrl};
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'],
      score: map['score'],
      photoUrl: map['photoUrl'],
    );
  }

  String toJson() => json.encode(toMap());
  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}
