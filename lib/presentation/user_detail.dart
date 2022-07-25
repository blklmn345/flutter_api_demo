import 'package:flutter/material.dart';
import 'package:flutter_api_demo/data/model/account.dart';
import 'package:flutter_api_demo/data/model/user.dart';
import 'package:flutter_api_demo/presentation/components/account_list.dart';
import 'package:flutter_api_demo/presentation/components/loading_widget.dart';
import 'package:flutter_api_demo/presentation/components/user_detail_header.dart';
import 'package:flutter_api_demo/usecase/user_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserDetailPage extends ConsumerWidget {
  const UserDetailPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail')),
      body: ref.watch(userAccountsProvider(user.id)).when(
            data: (response) {
              return response.when(
                success: (accounts) => _buildBody(accounts, ref),
                failure: (error) => ErrorWidget(error.toString()),
              );
            },
            error: (error, _) => ErrorWidget(error.toString()),
            loading: () => const LoadingWidget(),
          ),
    );
  }

  Widget _buildBody(
    List<Account> accounts,
    WidgetRef ref,
  ) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: UserDetailHeader(
            username: user.name,
            totalBalance: ref.watch(userTotalBalanceProvider(accounts)),
          ),
        ),
        const SizedBox(height: 30),
        Expanded(
          child: AccountList(accounts: accounts),
        ),
      ],
    );
  }
}
