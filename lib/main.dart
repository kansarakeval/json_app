import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:json_app/screen/albums/provider/albums_provider.dart';
import 'package:json_app/screen/comments/provider/comments_provider.dart';
import 'package:json_app/screen/conuntry/provider/country_provider.dart';
import 'package:json_app/screen/photos/provider/photos_provider.dart';
import 'package:json_app/screen/posts/provider/posts_provider.dart';
import 'package:json_app/screen/todos/provider/todos_provider.dart';
import 'package:json_app/screen/user/provider/user_provider.dart';
import 'package:json_app/screen/useres/provider/useres_provider.dart';
import 'package:json_app/utils/app_routes.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
   MultiProvider(
     providers: [
       ChangeNotifierProvider(create: (context) => PhotosProvider(),),
       ChangeNotifierProvider(create: (context) => PostsProvider(),),
       ChangeNotifierProvider(create: (context) => CommentsProvider(),),
       ChangeNotifierProvider(create: (context) => AlbumsProvider(),),
       ChangeNotifierProvider(create: (context) => TodosProvider(),),
       ChangeNotifierProvider(create: (context) => UserProvider(),),
       ChangeNotifierProvider(create: (context) => CountryProvider(),),
       ChangeNotifierProvider(create: (context) => UseresProvider(),),
     ],
     child: MaterialApp(
       theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      routes: app_routes,
     ),
   )
  );
}