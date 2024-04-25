
import 'package:delivery_025/ui/cart.dart';
import 'package:delivery_025/ui/cart_page/bloc/cart_bloc.dart';
import 'package:delivery_025/ui/main_page/bloc/main_bloc.dart';
import 'package:delivery_025/ui/main_page/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Cart(),
    child: MyApp(),
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MultiBlocProvider(
          providers: [
            BlocProvider<MainBloc>(create: (context)=> MainBloc()),
            BlocProvider<CartBloc>(create: (context)=> CartBloc()),
          ],
          child: const MainPage()),
    );
  }
}
