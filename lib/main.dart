import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_1/core/presentation/screen/log_screen/bloc/log_bloc.dart';
import 'package:task_1/core/presentation/screen/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [Provider(create: (context) => LogBloc(),)],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Task_1',
        theme: ThemeData.light(
        
         
        ),
        home: const LoginScreen()
      
      ),
    );
  }
}
