class Attachment {
  int id;
  String commentId;
  String attachment;

  Attachment({
    required this.id,
    required this.commentId,
    required this.attachment,
  });

  factory Attachment.fromJson(Map<String, dynamic> json) => Attachment(
      id: json['id'],
      commentId: json['comment_id'],
      attachment: json['attachment']);

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'comment_id': commentId,
      'attachment': attachment,
    };
  }
}
