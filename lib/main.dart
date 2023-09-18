import 'package:flutter/material.dart';
import 'package:whatsapp_dessign/pages/HomePages.pages.dart';
import 'package:whatsapp_dessign/pages/MessagePage.pages.dart';
import 'package:whatsapp_dessign/pages/ParamettrePage.pages.dart';

void main() {
  runApp(const MyWhatsapp());
}
class MyWhatsapp extends StatelessWidget {
  const MyWhatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Color(0xFF075E55),
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black.withOpacity(0)
          )

      ),
      routes: {
        "/": (context)=> const HomePage(),
        "ParamettrePage": (context)=> const ParamettrePage(),
        "MessagePage": (context)=> const MessagePage(),
      }  
    );
  }
}