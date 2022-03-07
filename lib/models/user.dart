class User {
  late String? _email;
  late String _password;
  late String _password2;
  late String _first_name;
  late String _last_name;

/*  User(
      { this._email,
       this._password='',
       this._password2='',
       this._first_name='',
       this._last_name=''});*/


  User.fromJson(Map<String, dynamic> json)
      : _email = json['email'],
        _password = json['password'],
        _password2 = json['password2'],
        _first_name = json['first_name'],
        _last_name = json['last_name']
    ;

  User.map(dynamic obj) {
    this._email = obj['email'];
    this._password = obj['type'];
    this._password2 = obj['type_id'];
    this._first_name = obj['visible'];
    this._last_name = obj['order_no'];
  }


  String get email => email;
}



/*
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
*/


