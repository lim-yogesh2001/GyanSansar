import 'package:gyansansar/models/notification.dart';
import 'package:riverpod/riverpod.dart';
import '../services/notification_api.dart';


final notificationFutureProvider = FutureProvider.autoDispose<List<NotificationModel>?>((ref) async {
  final data = await NotificationApi().fetchComments();
  return data['notification'] ?? [];
});