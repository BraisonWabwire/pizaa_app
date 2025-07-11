import 'package:flutter/material.dart';
import 'package:user_repository/src/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  final UserRepository userRepository;
  const MyApp(this.userRepository,{super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<AuthenticationBloc>(
      create:(context)=> AuthenticationBloc(
        userRepository:userRepository
      ),
      child: MyAppView(),
    );
  }
}
