import 'package:flutter_api_demo/core/api/api_response.dart';
import 'package:flutter_api_demo/data/model/account.dart';

abstract class AccountRepository {
  /// [accountId]で口座詳細を取得
  Future<ApiResponse<Account>> getAccountDetail({required int accountId});
}
