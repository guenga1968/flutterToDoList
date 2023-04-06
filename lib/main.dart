import 'package:calcumat/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle( const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Calcu Mat',
      home: Scaffold(
        backgroundColor: tdBGColor,
        appBar: _buildAppBar(),
        body: const Home(),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
        elevation: 0,
        backgroundColor: tdBGColor,
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.menu,
              color: tdBlack,
              size: 30,
            ),
            CircleAvatar(
              backgroundColor: tdRed,
              child: Icon(Icons.person),
            ),
          ],
        ),
      );
  }
}
