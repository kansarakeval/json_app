import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:json_app/screen/albums/model/albums_model.dart';
import 'package:json_app/screen/comments/model/comments_model.dart';
import 'package:json_app/screen/photos/model/photos_model.dart';
import 'package:json_app/screen/posts/model/posts_model.dart';
import 'package:json_app/screen/todos/model/todos_model.dart';

class JsonHelper {
  //photos jsonHelper
  Future<List<PhotosModel>> photosToList() async {
    //assets -> Variable
    var photosString = await rootBundle.loadString("assets/json/photos.json");
    //String -> json
    List photo = jsonDecode(photosString);

   List<PhotosModel> photosModelList = photo.map((e) => PhotosModel.mapToModel(e)).toList();

   return photosModelList;
  }

  //posts jsonHelper
  Future<List<PostsModel>> postsToList() async {
    //assets -> Variable
    var postsString = await rootBundle.loadString("assets/json/posts.json");
    //String -> json
    List posts = jsonDecode(postsString);

    List<PostsModel> postsModelList = posts.map((e) => PostsModel.mapToModel(e)).toList();

    return postsModelList;
  }

  //comments jsonHelper
  Future<List<CommentsModel>> commentsToList() async {
    //assets -> Variable
    var commentsString = await rootBundle.loadString("assets/json/comments.json");
    //String -> json
    List comments = jsonDecode(commentsString);

    List<CommentsModel> commentsModelList = comments.map((e) => CommentsModel.mapToModel(e)).toList();

    return commentsModelList;
  }

  //albums jsonHelper
  Future<List<AlbumsModel>> albumsToList() async {
    //assets -> Variable
    var albumsString = await rootBundle.loadString("assets/json/albums.json");
    //String -> json
    List albums = jsonDecode(albumsString);

    List<AlbumsModel> albumsModelList = albums.map((e) => AlbumsModel.mapToModel(e)).toList();

    return albumsModelList;
  }

  //todos jsonHelper
  Future<List<TodoModel>> todosToList() async {
    //assets -> Variable
    var todosString = await rootBundle.loadString("assets/json/todos.json");
    //String -> json
    List todos = jsonDecode(todosString);

    List<TodoModel> todosModelList = todos.map((e) => TodoModel.mapToModel(e)).toList();

    return todosModelList;
  }

}
