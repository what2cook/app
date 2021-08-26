class UserApi {
  Future<bool> login(String provider) async {
    print('Login with ${provider}');
    return true;
  }

  Future<bool> logout() async {
    print('Logout');
    return true;
  }
}

final userApi = UserApi();