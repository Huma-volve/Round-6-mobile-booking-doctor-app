class UserRepositoryImpl {
   //final UserRemoteDataSource remoteDataSource;

  //UserRepositoryImpl(this.remoteDataSource);

  //  @override
  // Future<void> deleteAccount() async {
  //   final userJson = await sl<CacheHelper>().getData('user');
  //   final token = userJson != null ? jsonDecode(userJson)['token'] : null;
  //   print('Retrieved token: $token');
  //   if (token != null) {
  //     await remoteDataSource.deleteAccount(token);
  //     await sl<CacheHelper>().removeData('user');
  //   }
  // }

  // @override
  // Future<void> logout() async {
  //   final userJson = await sl<CacheHelper>().getData('user');
  //   final token = userJson != null ? jsonDecode(userJson)['token'] : null;

  //   if (token != null) {
  //     await remoteDataSource.logout(token);
  //     await sl<CacheHelper>().removeData('user');
  //   }
  // }
}