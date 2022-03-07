class AuthRepocitory{
  Future<void> login() async{
    print('atte login');
    Future.delayed(Duration(seconds:3 ));
    print('Logge in');
  }
}