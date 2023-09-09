import 'package:gyansansar/models/country.dart';

class Faculty {
  int id;
  String facultyName;
  String countryId;
  Country country;

  Faculty({
    required this.id,
    required this.facultyName,
    required this.countryId,
    required this.country,
  });

  factory Faculty.fromJson(Map<String, dynamic> json) => Faculty(
        id: json['id'] as int,
        facultyName: json['faculty_name'] as String,
        countryId: json['country_id'] as String,
        country: Country.fromJson(json['country'] as Map<String, dynamic>),
      );
}
