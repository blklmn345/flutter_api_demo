import 'package:flutter/material.dart';
import 'package:flutter_api_demo/data/model/user.dart';
import 'package:flutter_api_demo/presentation/components/loading_widget.dart';
import 'package:flutter_api_demo/presentation/user_detail.dart';
import 'package:flutter_api_demo/usecase/user_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserListPage extends ConsumerWidget {
  const UserListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('User')),
      body: ref.watch(usersProvider).when(
            data: (response) => response.when(
              success: (users) => _buildList(users),
              failure: (error) => ErrorWidget(error?.toString() ?? 'Error'),
            ),
            error: (error, _) => ErrorWidget(error.toString()),
            loading: () => const LoadingWidget(),
          ),
    );
  }

  Widget _buildList(List<User> users) {
    return ListView.separated(
      itemBuilder: (context, index) {
        final user = users[index];

        Widget cell = _ListCell(user: user);

        if (index == users.length - 1) {
          cell = Column(
            children: [
              cell,
              const Divider(
                color: Colors.black,
              )
            ],
          );
        }

        return cell;
      },
      separatorBuilder: (context, index) {
        return const Divider(color: Colors.black);
      },
      itemCount: users.length,
    );
  }
}

class _ListCell extends StatelessWidget {
  const _ListCell({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(user.name),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => UserDetailPage(
              user: user,
            ),
          ),
        );
      },
    );
  }
}
