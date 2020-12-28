class Registration {
  final String message;
  final Map info;

  Registration({this.message, this.info});

  factory Registration.fromJson(Map<String, dynamic> json) {
    return Registration(
      message: json['message'],
      info: json['diary_entry']
    );
  }
}