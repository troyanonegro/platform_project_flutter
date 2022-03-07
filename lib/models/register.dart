class Register {
  final String email;
  final String password1;
  final String password2;
  final String first_name;
  final String last_name;

  Register(
      {this.email = '',
        this.password1 = '',
        this.password2 = '',
        this.first_name = '',
        this.last_name = ''});

  Register copyWith({
    required String email,
    required String password1,
    required String password2,
    required String first_name,
    required String last_name,
  }) {
    return Register(
        email: email?? this.email,
        password1: password1?? this.password1,
        password2: password2?? this.password2,
        first_name: first_name?? this.first_name,
        last_name: last_name?? this.last_name
    );
  }
}
