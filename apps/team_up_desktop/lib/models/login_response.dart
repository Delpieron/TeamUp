class LoginResponse {
  LoginResponse({required this.username, required this.email, required this.token});

  factory LoginResponse.fromJson(Map<String, Object?> json) => LoginResponse(
    username: json['username']! as String,
    email: json['email']! as String,
    token: json['token']! as String,
  );

  final String username;
  final String email;
  final String token;
}