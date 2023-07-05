// ignore_for_file: no_leading_underscores_for_local_identifiers

class RandomPost {
  RandomPost({
    required this.id,
    required this.facultyId,
    required this.subjectId,
    required this.userId,
    required this.type,
    required this.description,
    required this.notificationStatus,
    required this.createdAt,
    required this.updatedAt,
    required this.reactorCounter,
    required this.commentCounter,
    required this.meta,
    required this.subject,
    required this.faculty,
    required this.user,
    required this.comment,
  });
  late final int id;
  late final int facultyId;
  late final int subjectId;
  late final int userId;
  late final int type;
  late final String description;
  late final int notificationStatus;
  late final DateTime createdAt;
  late final DateTime updatedAt;
  late final int reactorCounter;
  late final int commentCounter;
  late final List<Meta> meta;
  late final Subject subject;
  late final Faculty faculty;
  late final User user;
  late final List<Comment> comment;
  
  RandomPost.fromJson(Map<String, dynamic> json){
    id = json['id'];
    facultyId = json['faculty_id'];
    subjectId = json['subject_id'];
    userId = json['user_id'];
    type = json['type'];
    description = json['description'];
    notificationStatus = json['notification_status'];
    createdAt = DateTime.parse(json['created_at']);
    updatedAt = DateTime.parse(json['updated_at']);
    reactorCounter = json['reactorCounter'];
    commentCounter = json['commentCounter'];
    meta = List.from(json['meta']).map((e)=>Meta.fromJson(e)).toList();
    subject = Subject.fromJson(json['subject']);
    faculty = Faculty.fromJson(json['faculty']);
    user = User.fromJson(json['user']);
    comment = List.from(json['comment']).map((e)=>Comment.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['faculty_id'] = facultyId;
    _data['subject_id'] = subjectId;
    _data['user_id'] = userId;
    _data['type'] = type;
    _data['description'] = description;
    _data['notification_status'] = notificationStatus;
    _data['created_at'] = createdAt.toIso8601String();
    _data['updated_at'] = updatedAt.toIso8601String();
    _data['reactorCounter'] = reactorCounter;
    _data['commentCounter'] = commentCounter;
    _data['meta'] = meta.map((e)=>e.toJson()).toList();
    _data['subject'] = subject.toJson();
    _data['faculty'] = faculty.toJson();
    _data['user'] = user.toJson();
    _data['comment'] = comment.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Meta {
  Meta({
    required this.id,
    required this.postId,
    required this.attachment,
  });
  late final String id;
  late final int postId;
  late final String attachment;
  
  Meta.fromJson(Map<String, dynamic> json){
    id = json['id'];
    postId = json['post_id'];
    attachment = json['attachment'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['post_id'] = postId;
    _data['attachment'] = attachment;
    return _data;
  }
}

class Subject {
  Subject({
    required this.id,
    required this.subjectName,
    required this.fullMark,
    required this.passMark,
    required this.practicalStatus,
    required this.theoreticalFullMark,
    required this.theoreticalPassMark,
    required this.practicalFullMark,
    required this.practicalPassMark,
  });
  late final int id;
  late final String subjectName;
  late final String fullMark;
  late final String passMark;
  late final int practicalStatus;
  late final String theoreticalFullMark;
  late final String theoreticalPassMark;
  late final String practicalFullMark;
  late final String practicalPassMark;
  
  Subject.fromJson(Map<String, dynamic> json){
    id = json['id'];
    subjectName = json['subject_name'];
    fullMark = json['full_mark'];
    passMark = json['pass_mark'];
    practicalStatus = json['practical_status'];
    theoreticalFullMark = json['theoretical_full_mark'];
    theoreticalPassMark = json['theoretical_pass_mark'];
    practicalFullMark = json['practical_full_mark'];
    practicalPassMark = json['practical_pass_mark'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['subject_name'] = subjectName;
    _data['full_mark'] = fullMark;
    _data['pass_mark'] = passMark;
    _data['practical_status'] = practicalStatus;
    _data['theoretical_full_mark'] = theoreticalFullMark;
    _data['theoretical_pass_mark'] = theoreticalPassMark;
    _data['practical_full_mark'] = practicalFullMark;
    _data['practical_pass_mark'] = practicalPassMark;
    return _data;
  }
}

class Faculty {
  Faculty({
    required this.id,
    required this.facultyName,
    required this.countryId,
    required this.country,
  });
  late final int id;
  late final String facultyName;
  late final int countryId;
  late final Country country;
  
  Faculty.fromJson(Map<String, dynamic> json){
    id = json['id'];
    facultyName = json['faculty_name'];
    countryId = json['country_id'];
    country = Country.fromJson(json['country']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['faculty_name'] = facultyName;
    _data['country_id'] = countryId;
    _data['country'] = country.toJson();
    return _data;
  }
}

class Country {
  Country({
    required this.id,
    required this.countryName,
    required this.countryCode,
    required this.phoneCode,
  });
  late final int id;
  late final String countryName;
  late final String countryCode;
  late final String phoneCode;
  
  Country.fromJson(Map<String, dynamic> json){
    id = json['id'];
    countryName = json['country_name'];
    countryCode = json['country_code'];
    phoneCode = json['phone_code'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['country_name'] = countryName;
    _data['country_code'] = countryCode;
    _data['phone_code'] = phoneCode;
    return _data;
  }
}

class User {
  User({
    required this.id,
    required this.givenName,
    required this.familyName,
    required this.email,
    required this.phone,
    required this.info,
  });
  late final int id;
  late final String givenName;
  late final String familyName;
  late final String email;
  late final String phone;
  late final Info info;
  
  User.fromJson(Map<String, dynamic> json){
    id = json['id'];
    givenName = json['given_name'];
    familyName = json['family_name'];
    email = json['email'];
    phone = json['phone'];
    info = Info.fromJson(json['info']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['given_name'] = givenName;
    _data['family_name'] = familyName;
    _data['email'] = email;
    _data['phone'] = phone;
    _data['info'] = info.toJson();
    return _data;
  }
}

class Info {
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
  late final int userId;
  late final String profile;
  late final String coverPhoto;
  late final String dob;
  late final int gender;
  late final int countryId;
  late final String postalCode;
  late final String provinceStatePrefecture;
  late final String townWardCity;
  late final String roomBuildingStreetAddress;
  
  Info.fromJson(Map<String, dynamic> json){
    userId = json['user_id'];
    profile = json['profile'];
    coverPhoto = json['cover_photo'];
    dob = json['dob'];
    gender = json['gender'];
    countryId = json['country_id'];
    postalCode = json['postal_code'];
    provinceStatePrefecture = json['province_state_prefecture'];
    townWardCity = json['town_ward_city'];
    roomBuildingStreetAddress = json['room_building_street_address'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['user_id'] = userId;
    _data['profile'] = profile;
    _data['cover_photo'] = coverPhoto;
    _data['dob'] = dob;
    _data['gender'] = gender;
    _data['country_id'] = countryId;
    _data['postal_code'] = postalCode;
    _data['province_state_prefecture'] = provinceStatePrefecture;
    _data['town_ward_city'] = townWardCity;
    _data['room_building_street_address'] = roomBuildingStreetAddress;
    return _data;
  }
}

class Comment {
  Comment({
    required this.id,
    required this.userId,
    required this.description,
    required this.postId,
    required this.reactorCounter,
    required this.user,
    required this.attachment,
  });
  late final int id;
  late final int userId;
  late final String description;
  late final int postId;
  late final int reactorCounter;
  late final User user;
  late final List<Attachment> attachment;
  
  Comment.fromJson(Map<String, dynamic> json){
    id = json['id'];
    userId = json['user_id'];
    description = json['description'];
    postId = json['post_id'];
    reactorCounter = json['reactorCounter'];
    user = User.fromJson(json['user']);
    attachment = List.from(json['attachment']).map((e)=>Attachment.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['user_id'] = userId;
    _data['description'] = description;
    _data['post_id'] = postId;
    _data['reactorCounter'] = reactorCounter;
    _data['user'] = user.toJson();
    _data['attachment'] = attachment.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Attachment {
  Attachment({
    required this.id,
    required this.commentId,
    required this.attachment,
  });
  late final int id;
  late final int commentId;
  late final String attachment;
  
  Attachment.fromJson(Map<String, dynamic> json){
    id = json['id'];
    commentId = json['comment_id'];
    attachment = json['attachment'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['comment_id'] = commentId;
    _data['attachment'] = attachment;
    return _data;
  }
}