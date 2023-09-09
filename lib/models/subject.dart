class Subject {
  int id;
  String subjectName;
  String fullMark;
  String passMark;
  String practicalStatus;
  String theoreticalFullMark;
  String theoreticalPassMark;
  String practicalFullMark;
  String practicalPassMark;

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

  factory Subject.fromJson(Map<String, dynamic> json) => Subject(
        id: json['id'] as int,
        subjectName: json['subject_name'] as String,
        fullMark: json['full_mark'] as String,
        passMark: json['pass_mark'] as String,
        practicalStatus: json['practical_status'] as String,
        theoreticalFullMark: json['theoretical_full_mark'] as String,
        theoreticalPassMark: json['theoretical_pass_mark'] as String,
        practicalFullMark: json['practical_full_mark'] as String,
        practicalPassMark: json['practical_pass_mark'] as String,
      );
}
