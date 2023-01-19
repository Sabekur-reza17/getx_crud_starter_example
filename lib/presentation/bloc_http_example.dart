import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getx_crud_starter_example/app/network/repository/user_repository.dart';
import 'package:getx_crud_starter_example/blocs/userbloc/user_bloc.dart';
import 'package:getx_crud_starter_example/blocs/userbloc/user_bloc_event.dart';
import 'package:getx_crud_starter_example/blocs/userbloc/user_bloc_state.dart';
import 'package:getx_crud_starter_example/presentation/app.dart';
import 'package:getx_crud_starter_example/app/data/models/user.dart';

class BlocHttpExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RepositoryProvider(
        create: (context) => UserRepository(),
        child: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          UserBloc(RepositoryProvider.of<UserRepository>(context))
            ..add(LoadUserEvent()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('The Bloc http App'),
        ),
        body: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            if (state is UserLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is UserLoadedSuccessState) {
              User userlist = state.users;
              print('Userlist ${userlist.data.toString()}');
             /* return ListView.builder(
                  itemCount: userlist.length,
                  itemBuilder: (_, index) {
                    return Card(
                      color: Colors.blue,
                      elevation: 4,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: ListTile(
                        title:
                            Text(userlist[index].data![index]?.firstName ?? ''),
                        subtitle: Text(userlist[index].data![index]?.email ?? ''),
                        trailing: CircleAvatar(
                          backgroundImage: NetworkImage(
                              userlist[index].data![index].avatar ?? ""),
                        ),
                      ),
                    );
                  });*/
            }
            return Container();
          },
        ),
      ),
    );
  }
}
