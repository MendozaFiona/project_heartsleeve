class UserAccount {
  final String message;
  UserAccount({this.message});

  factory UserAccount.fromJson(Map<String, dynamic> json) {
    return UserAccount(
      message: json['message'],
    );
  }
}