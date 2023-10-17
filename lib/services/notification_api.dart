import 'dart:convert';
import '../const/urls.dart';
import 'package:http/http.dart' as http;
import '../models/notification.dart';

class NotificationApi {
  String url = baseUrl;


  Future<Map<String, dynamic>> fetchComments() async {
    try {
      final response = await http.get(
          Uri.parse(
            '$url/notification/list',
          ).replace(queryParameters: {
            "offset": "0",
            "limit": "10",
          }),
          headers: {
            "Authorization":
                "Bearer 52c3d1691930ae283d3db37e61b2f82b55dca34efdfb499fec7135bce9359a02"
          });
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        final bool flag = responseData['flag'];
        final List extractedList = responseData['notification'];
        final List<NotificationModel> notificationList = extractedList
            .map((value) => NotificationModel.fromJson(value))
            .toList();
        return {"flag": flag, "notification": notificationList};
      } else {
        throw Exception(response.reasonPhrase);
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
