import 'package:core_exam2/components/update.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'components/Addpage.dart';
import 'components/home_page.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
      '/':(context)=>HomePage(),
        '/dt':(context)=>Addpage(),
        '/up':(context)=>update(),
      },
    );
  }
}
