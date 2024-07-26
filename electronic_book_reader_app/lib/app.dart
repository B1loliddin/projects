import 'package:electronic_book_reader_app/pages/book_details_page.dart';
import 'package:electronic_book_reader_app/pages/home_page.dart';
import 'package:electronic_book_reader_app/pages/reader_page.dart';
import 'package:flutter/material.dart';

class ElectronicBookReaderApp extends StatelessWidget {
  const ElectronicBookReaderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home_page',
      routes: {
        '/home_page': (context) => const HomePage(),
        '/book_details_page': (context) => const BookDetailsPage(),
        '/reader_page': (context) => const ReaderPage(),
      },
    );
  }
}
