import 'package:flutter_api_demo/core/api/api_response.dart';
import 'package:flutter_api_demo/data/model/account.dart';
import 'package:flutter_api_demo/data/model/user.dart';

abstract class UserRepository {
  /// ユーザー一覧取得
  Future<ApiResponse<List<User>>> getUsers();

  /// [userId]でユーザー詳細を取得
  Future<ApiResponse<User?>> getUserDetail({required int userId});

  /// [userId]でユーザーの口座一覧を取得
  Future<ApiResponse<List<Account>>> getUserAccounts({required int userId});
}
