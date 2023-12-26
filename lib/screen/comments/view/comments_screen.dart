import 'package:flutter/material.dart';
import 'package:json_app/screen/comments/provider/comments_provider.dart';
import 'package:provider/provider.dart';

class CommentsScreen extends StatefulWidget {
  const CommentsScreen({super.key});

  @override
  State<CommentsScreen> createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> {
  CommentsProvider? providerr;
  CommentsProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<CommentsProvider>().getData();
  }
  @override
  Widget build(BuildContext context) {
    providerr = context.read<CommentsProvider>();
    providerw = context.watch<CommentsProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Comments"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: providerw!.commentsl2.length,
          itemBuilder: (context, index) {
            return ListTile(
                leading: Text("${providerw!.commentsl2[index].id}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${providerw!.commentsl2[index].name}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    Text("- ${providerw!.commentsl2[index].email}",style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
                subtitle: Text("${providerw!.commentsl2[index].body}")
            );
          },
        ),
      ),
    );
  }
}
