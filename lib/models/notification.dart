import './user.dart';

class NotificationModel {
  final int id;
  final String userId;
  final String notificationGeneratorId;
  final String type;
  final Data data;
  final String? readAt;
  final String readStatus;
  final String createdAt;
  final User user;
  final NotificationCreator notificationCreator;

  NotificationModel(
      {required this.id,
      required this.userId,
      required this.notificationGeneratorId,
      required this.type,
      required this.data,
      this.readAt,
      required this.readStatus,
      required this.createdAt,
      required this.user,
      required this.notificationCreator});

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
        id: json['id'],
        userId: json['user_id'],
        notificationGeneratorId: json['notification_generator_id'],
        type: json['type'],
        data: Data.fromJson(json['data']),
        readAt: json['read_at'],
        readStatus: json['read_status'],
        createdAt: json['created_at'],
        user: User.fromJson(json['user']),
        notificationCreator:
            NotificationCreator.fromJson(json['notification_creator']));
  }
}

class NotificationCreator {
  final int id;
  final String givenName;
  final String familyName;
  final Info info;

  NotificationCreator({
    required this.id,
    required this.givenName,
    required this.familyName,
    required this.info,
  });

  factory NotificationCreator.fromJson(Map<String, dynamic> json) {
    return NotificationCreator(
      id: json['id'],
      givenName: json['given_name'],
      familyName: json['family_name'],
      info: Info.fromJson(
        json['info'],
      ),
    );
  }
}

class Info {
  final int id;
  final String userId;
  final String? profile;

  Info({required this.id, required this.userId, this.profile});

  factory Info.fromJson(Map<String, dynamic> json) {
    return Info(
      id: json['id'],
      userId: json['user_id'],
      profile: json['profile'],
    );
  }
}

class Data {
  final int id;
  final String userId;
  final String followerId;
  final int status;
  final DateTime createdAt;
  final DateTime updatedAt;

  Data({
    required this.id,
    required this.userId,
    required this.followerId,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['id'],
      userId: json['user_id'],
      followerId: json['follower_id'],
      status: json['status'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }
}
