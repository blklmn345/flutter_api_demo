import 'package:flutter_api_demo/core/api/api_client.dart';
import 'package:flutter_api_demo/core/api/api_response.dart';
import 'package:flutter_api_demo/data/model/account.dart';
import 'package:flutter_api_demo/data/model/user.dart';
import 'package:flutter_api_demo/domain/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final ApiClient apiClient;

  UserRepositoryImpl(this.apiClient);

  @override
  Future<ApiResponse<List<Account>>> getUserAccounts({required int userId}) {
    return apiClient
        .getUserAccounts(userId)
        .then((accounts) => ApiResponse.success(accounts))
        .catchError((error) => ApiResponse<List<Account>>.failure(error));
  }

  @override
  Future<ApiResponse<User?>> getUserDetail({required int userId}) {
    return apiClient
        .getUserDetail(userId)
        .then((userDetail) => ApiResponse.success(userDetail))
        .catchError((error) => ApiResponse<User?>.failure(error));
  }

  @override
  Future<ApiResponse<List<User>>> getUsers() {
    return apiClient
        .getUsers()
        .then((users) => ApiResponse.success(users))
        .catchError((error) => ApiResponse<List<User>>.failure(error));
  }
}
