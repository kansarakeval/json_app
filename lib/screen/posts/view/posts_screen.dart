import 'package:flutter/material.dart';
import 'package:json_app/screen/posts/provider/posts_provider.dart';
import 'package:provider/provider.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({super.key});

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  PostsProvider? providerr;
  PostsProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<PostsProvider>().getData();
  }

  @override
  Widget build(BuildContext context) {
    providerr = context.read<PostsProvider>();
    providerw = context.watch<PostsProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Posts"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: providerw!.postsl2.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text("${providerw!.postsl2[index].id}",style: TextStyle(fontWeight: FontWeight.bold),),
              title: Text("${providerw!.postsl2[index].title}",style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text("${providerw!.postsl2[index].body}")
            );
          },
        ),
      ),
    );
  }
}
