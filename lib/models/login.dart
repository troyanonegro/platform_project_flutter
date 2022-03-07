class Login {
  final String username;
  final String password;
  Login({this.username = '', this.password = ''});
  Login copyWith({
    required String username,
    required String password,
  }) {
    return Login(
        username: username ?? this.username,
        password: password ?? this.password);
  }
}