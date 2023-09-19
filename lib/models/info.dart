class Info {
  String? userId;
  String? profile;
  String? coverPhoto;
  DateTime? dob;
  String? gender;
  String? countryId;
  String? postalCode;
  String? provinceStatePrefecture;
  String? townWardCity;
  String? roomBuildingStreetAddress;

  Info({
    required this.userId,
    required this.profile,
    required this.coverPhoto,
    required this.dob,
    required this.gender,
    required this.countryId,
    required this.postalCode,
    required this.provinceStatePrefecture,
    required this.townWardCity,
    required this.roomBuildingStreetAddress,
  });

  factory Info.fromJson(Map<String, dynamic> json) => Info(
        userId: json["user_id"] != null ? json['user_id'] as String : null,
        profile: json['profile'] != null ? json['profile'] as String : null,
        coverPhoto:
            json['cover_photo'] != null ? json['cover_photo'] as String : null,
        dob: DateTime.parse(json['dob']),
        gender: json['gender'] as String,
        countryId: json['country_id'] as String,
        postalCode: json['postal_code'] as String,
        provinceStatePrefecture: json['province_state_prefecture'] as String,
        townWardCity: json['town_ward_city'] as String,
        roomBuildingStreetAddress:
            json['room_building_street_address'] as String,
      );

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'profile': profile,
      'cover_photo': coverPhoto,
      'dob': dob?.toIso8601String(),
      'gender': gender,
      'country_id': countryId,
      'postal_code': postalCode,
      'province_state_prefecture': provinceStatePrefecture,
      'town_ward_city': townWardCity,
      'room_building_street_address': roomBuildingStreetAddress,
    };
  }
}
