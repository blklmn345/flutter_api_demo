import 'package:dio/dio.dart';
import 'package:flutter_api_demo/data/model/account.dart';
import 'package:flutter_api_demo/data/model/user.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

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
  Future<Account> getAccountDetail(@Path() int id);
}
