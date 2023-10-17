import 'info.dart';

class User {
  final String id;
  final String givenName;
  final String familyName;
  final String email;
  final String phone;
  final String type;
  final Info? info;

  User({
    required this.id,
    required this.givenName,
    required this.familyName,
    required this.email,
    required this.phone,
    required this.type,
    required this.info,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'] as String,
        givenName: json['given_name'] as String,
        familyName: json['family_name'] as String,
        email: json['email'] as String,
        phone: json['phone'] as String,
        type: json['type'] as String,
        info: json['info'] != null
            ? Info.fromJson(json['info'] as Map<String, dynamic>)
            : null,
      );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'given_name': givenName,
      'family_name': familyName,
      'email': email,
      'phone': phone,
      'type': type,
      'info': info?.toJson()
    };
  }
}
