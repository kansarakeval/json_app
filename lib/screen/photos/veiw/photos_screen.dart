import 'package:flutter/material.dart';
import 'package:json_app/screen/photos/provider/photos_provider.dart';
import 'package:provider/provider.dart';

class PhotosScreen extends StatefulWidget {
  const PhotosScreen({super.key});

  @override
  State<PhotosScreen> createState() => _PhotosScreenState();
}

class _PhotosScreenState extends State<PhotosScreen> {
  PhotosProvider? providerr;
  PhotosProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<PhotosProvider>().getData();
  }

  @override
  Widget build(BuildContext context) {
    providerr = context.read<PhotosProvider>();
    providerw = context.watch<PhotosProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Photos"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: providerw!.l2.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text("${providerw!.l2[index].id}"),
              title: Text("${providerw!.l2[index].title}"),
              subtitle: Image.network("${providerw!.l2[index].thumbnailUrl}",height: 100,width: 100,),
            );
          },
        ),
      ),
    );
  }
}
