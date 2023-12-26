import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:json_app/screen/photos/provider/photos_provider.dart';
import 'package:json_app/utils/app_routes.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
   MultiProvider(
     providers: [
       ChangeNotifierProvider(create: (context) => PhotosProvider(),),
     ],
     child: MaterialApp(
       theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      routes: app_routes,
     ),
   )
  );
}