import 'package:flutter_api_demo/core/api/api_client.dart';
import 'package:flutter_api_demo/core/api/api_response.dart';
import 'package:flutter_api_demo/data/model/account.dart';
import 'package:flutter_api_demo/data/model/user.dart';
import 'package:flutter_api_demo/data/repository/remote/user_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userRepositoryProvider = Provider.autoDispose(
  (ref) => UserRepositoryImpl(ref.watch(apiClientProvider)),
);

final usersProvider = FutureProvider.autoDispose(
  (ref) => ref.watch(userRepositoryProvider).getUsers(),
);

final userDetailProvider =
    FutureProvider.autoDispose.family<ApiResponse<User?>, int>(
  (ref, userId) =>
      ref.watch(userRepositoryProvider).getUserDetail(userId: userId),
);

final userAccountsProvider =
    FutureProvider.autoDispose.family<ApiResponse<List<Account>>, int>(
  (ref, userId) =>
      ref.watch(userRepositoryProvider).getUserAccounts(userId: userId),
);

final userTotalBalanceProvider =
    Provider.autoDispose.family<int, List<Account>>((ref, accounts) {
  return accounts.map((account) => account.balance).reduce((a, b) => a + b);
});


