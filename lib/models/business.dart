class Buiness{
  final String name;
  final bool check;
  Buiness({required this.name, required this.check});

  Buiness copyWith({
    required String name,
    required bool check,
  }) {
    return Buiness(
        name: name ?? this.name,
        check: check ?? this.check);
  }
}

/*
*  Login copyWith({
    required String username,
    required String password,
  }) {
    return Login(
        username: username ?? this.username,
        password: password ?? this.password);
  }*/
