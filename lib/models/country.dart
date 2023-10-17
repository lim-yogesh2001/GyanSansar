class Country {
  String id;
  String countryName;
  String countryCode;
  String phoneCode;

  Country({
    required this.id,
    required this.countryName,
    required this.countryCode,
    required this.phoneCode,
  });

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        id: json['id'] as String,
        countryName: json['country_name'] as String,
        countryCode: json['country_code'] as String,
        phoneCode: json['phone_code'] as String,
      );
}
