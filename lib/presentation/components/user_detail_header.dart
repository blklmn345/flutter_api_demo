import 'package:flutter/material.dart';
import 'package:flutter_api_demo/utils/string_format.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserDetailHeader extends ConsumerWidget {
  const UserDetailHeader({
    Key? key,
    required this.username,
    required this.totalBalance,
  }) : super(key: key);

  final String username;
  final int totalBalance;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        _buildRow('User:', username),
        const SizedBox(height: 10),
        _buildRow('Total:', totalBalance.formatWithCommaAndYen)
      ],
    );
  }

  Widget _buildRow(String label, String value) {
    return Row(
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 20),
        ),
        const Spacer(),
        Text(
          value,
          style: const TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
