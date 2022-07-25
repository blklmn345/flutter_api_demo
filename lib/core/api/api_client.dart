import 'package:dio/dio.dart';
import 'package:flutter_api_demo/data/model/account.dart';
import 'package:flutter_api_demo/data/model/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

final dioProvider = Provider.autoDispose((ref) {
  final dio = Dio();

  dio.interceptors.add(PrettyDioLogger(
    requestHeader: true,
    requestBody: true,
    responseBody: true,
    responseHeader: true,
    error: true,
    compact: true,
    maxWidth: 100,
  ));

  return dio;
});

final apiClientProvider = Provider.autoDispose(
  (ref) => ApiClient(ref.watch(dioProvider)),
);

@RestApi(baseUrl: 'https://mfx-recruit-dev.herokuapp.com/')
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET('/users')
  Future<List<User>> getUsers();

  @GET('/users/{id}')
  Future<User?> getUserDetail(@Path() int id);

  @GET('/users/{id}/accounts')
  Future<List<Account>> getUserAccounts(@Path() int id);

  @GET('/accounts/{id}')
  Future<Account?> getAccountDetail(@Path() int id);
}
