import 'package:flutter/material.dart';
import 'package:flutter_api_demo/data/model/account.dart';
import 'package:flutter_api_demo/utils/string_format.dart';

class AccountList extends StatelessWidget {
  const AccountList({
    Key? key,
    required this.accounts,
  }) : super(key: key);

  final List<Account> accounts;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        final account = accounts[index];

        Widget cell = ListTile(
          leading: Text(account.name),
          trailing: Text(account.balance.formatWithCommaAndYen),
        );

        if (index == accounts.length - 1) {
          cell = Column(
            children: [
              cell,
              const Divider(
                color: Colors.black,
              ),
            ],
          );
        }

        return cell;
      },
      itemCount: accounts.length,
      separatorBuilder: (context, index) => const Divider(
        color: Colors.black,
      ),
    );
  }
}
