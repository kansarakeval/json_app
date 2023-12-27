import 'package:flutter/material.dart';
import 'package:json_app/screen/albums/view/albums_screen.dart';
import 'package:json_app/screen/comments/view/comments_screen.dart';
import 'package:json_app/screen/conuntry/view/country_screen.dart';
import 'package:json_app/screen/home/view/home_screen.dart';
import 'package:json_app/screen/photos/veiw/photos_screen.dart';
import 'package:json_app/screen/posts/view/posts_screen.dart';
import 'package:json_app/screen/todos/view/todos_screen.dart';
import 'package:json_app/screen/user/veiw/user_screen.dart';

Map<String,WidgetBuilder> app_routes={
  '/':(context) => const HomeScreen(),
  'posts':(context) => const PostsScreen(),
  'comments':(context) => const CommentsScreen(),
  'albums':(context) => const AlbumeScreen(),
  'photos':(context) => const PhotosScreen(),
  'todos':(context) => const TodosScreen(),
  'user':(context) => const UserScreen(),
  'country':(context) => const CountryScreen(),
};