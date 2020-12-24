class DiaryEntry {
  final String message;
  final Map info;

  DiaryEntry({this.message, this.info});

  factory DiaryEntry.fromJson(Map<String, dynamic> json) {
    return DiaryEntry(
      message: json['message'],
      info: json['diary_entry']
    );
  }
}
