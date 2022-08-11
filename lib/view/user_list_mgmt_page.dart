import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/models/users_list/users_list_model.dart';

import '../data/remote/response/status.dart';
import '../view_models/users_list_vm.dart';
import 'widgets/my_error_widget.dart';
import 'widgets/my_loading_widget.dart';

/// This page was created with the solely purpose of using Provider
class UserListMgmtPage extends StatefulWidget {
  const UserListMgmtPage({Key? key}) : super(key: key);

  @override
  State<UserListMgmtPage> createState() => _UserListMgmtPageState();
}

class _UserListMgmtPageState extends State<UserListMgmtPage> {
  final UsersListVM usersListVM = UsersListVM();

  @override
  void initState() {
    usersListVM.fetchUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('User Maneagment Page')),
        body: ChangeNotifierProvider(
          create: (BuildContext context) => usersListVM,
          child: Consumer<UsersListVM>(
            builder: (context, value, _) {
              switch (usersListVM.usersList.status) {
                case Status.loading:
                  debugPrint("Entered status :: LOADING");
                  return const MyLoadingWidget();
                case Status.error:
                  debugPrint("Entered status :: ERROR");
                  return MyErrorWidget(usersListVM.usersList.message ?? "NA");
                case Status.completed:
                  debugPrint("Entered status :: COMPLETED");
                  return _getUsersListView(usersListVM.usersList.data?.users);

                default:
              }

              return Container();
            },
          ),
        ),
      ),
    );
  }

  Widget _getUsersListView(List<UserModel>? usersList) {
    return ListView.builder(
      itemCount: usersList?.length,
      itemBuilder: (context, int index) {
        return _getUserListItem(usersList![index]);
      },
    );
  }

  Widget _getUserListItem(UserModel user) {
    return Card(
      child: ListTile(
        title: Text(user.name),
        subtitle: Text(user.email),
        trailing: IconButton(
          onPressed: () => {},
          icon: const Icon(Icons.delete),
        ),
      ),
    );
  }
} // end of class
