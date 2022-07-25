import 'package:flutter_api_demo/core/api/api_client.dart';
import 'package:flutter_api_demo/core/api/api_response.dart';
import 'package:flutter_api_demo/data/model/account.dart';
import 'package:flutter_api_demo/domain/repository/account_repository.dart';

class AccountRepositoryImpl implements AccountRepository {
  final ApiClient apiClient;

  AccountRepositoryImpl(this.apiClient);

  @override
  Future<ApiResponse<Account?>> getAccountDetail({required int accountId}) {
    return apiClient
        .getAccountDetail(accountId)
        .then((accountDetail) => ApiResponse.success(accountDetail))
        .catchError((error) => ApiResponse<Account>.failure(error));
  }
}
