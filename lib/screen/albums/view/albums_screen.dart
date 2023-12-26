import 'package:flutter/material.dart';
import 'package:json_app/screen/albums/provider/albums_provider.dart';
import 'package:provider/provider.dart';

class AlbumeScreen extends StatefulWidget {
  const AlbumeScreen({super.key});

  @override
  State<AlbumeScreen> createState() => _AlbumeScreenState();
}

class _AlbumeScreenState extends State<AlbumeScreen> {
  AlbumsProvider? providerr;
  AlbumsProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<AlbumsProvider>().getData();
  }
  @override
  Widget build(BuildContext context) {
    providerr = context.read<AlbumsProvider>();
    providerw = context.watch<AlbumsProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Albums"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: providerw!.albumsl2.length,
          itemBuilder: (context, index) {
            return ListTile(
                leading: Text("${providerw!.albumsl2[index].id}"),
                title:
                    Text("${providerw!.albumsl2[index].title}"),
            );
          },
        ),
      ),
    );
  }
}
