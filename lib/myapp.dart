import 'package:flutter/material.dart';
import 'package:gprtu_driver_phone/pages/loadingpage.dart';
import 'package:gprtu_driver_phone/providers/UserState.dart';
import 'package:provider/provider.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserState()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'GPRTU - Driver',
        theme: ThemeData(

          primaryColor: const Color.fromRGBO(98, 75, 255, 1),
          canvasColor: const Color.fromRGBO(33, 43, 54, 1),
          useMaterial3: true,
        ),
        home: const LoadingPage(),
      ),
    );
  }
}