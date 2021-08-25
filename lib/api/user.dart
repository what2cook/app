class UserApi {
  Future<bool> login(String provider) async {
    print('Login with ${provider}');
    return true;
  }
}

final userApi = UserApi();