import 'package:flutter/material.dart';
import 'pages/home.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(primary: const Color.fromARGB(255, 231, 52, 48))),
      home: const Home(),
    ));
