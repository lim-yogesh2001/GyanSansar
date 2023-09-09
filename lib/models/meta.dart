class Meta {
  int id;
  String postId;
  String attachment;

  Meta({
    required this.id,
    required this.postId,
    required this.attachment,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        id: json['id'] as int,
        postId: json['post_id'] as String,
        attachment: json['attachment'] as String,
      );
}
