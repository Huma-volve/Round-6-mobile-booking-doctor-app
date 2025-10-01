// abstract class UserRemoteDataSource{
// //Future <void>deleteAccount(String token);
// //Future<void>logOut(String token);
// }
// class UserRemoteDataSourceImpl implements UserRemoteDataSource{
// }
//    @override
// //   Future<void> deleteAccount(String token) async {
// //     try {
// //       final response = await dio.post(
// //         ApiUrls.deleteAccount,
// //         data: {'password': 'Abdoronaldo@7'},
// //         options: Options(
// //           headers: {
// //             'Authorization': 'Bearer $token',
// //             'Content-Type': 'application/json',
// //           },
// //         ),
// //       );

// //       print('Status: ${response.statusCode}');
// //       print('Response: ${response.data}');

// //       print(response);
// //       if (response.statusCode != 200) {
// //         throw Exception('Failed to load user: ${response.statusCode}');
// //       }
// //     } on DioException catch (e) {
// //       print('DioException message: ${e.message}');
// //       throw Exception('therer was an error');
// //     }
// //   }

// // Future<void> logOut(String token) async {
// //      try {
// //     final response = await dio.post(
// //       ApiUrls.logOut,
// //       options: Options(headers: {'Authorization': 'Bearer $token'}),
// //     );
// //     print('response : ${response}');
// //     if (response.statusCode != 200) {
// //       throw Exception('Failed to logout');
// //     }
// //      } on DioException catch (e) {
// //       print('DioException message: ${e.message}');
// //       throw Exception('therer was an error');
// //     }
// //   }