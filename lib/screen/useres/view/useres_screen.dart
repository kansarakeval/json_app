import 'package:flutter/material.dart';
import 'package:json_app/screen/useres/provider/useres_provider.dart';
import 'package:provider/provider.dart';

class UseresScreen extends StatefulWidget {
  const UseresScreen({super.key});

  @override
  State<UseresScreen> createState() => _UseresScreenState();
}

class _UseresScreenState extends State<UseresScreen> {
  UseresProvider? providerr;
  UseresProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<UseresProvider>().getData();
  }

  @override
  Widget build(BuildContext context) {
    providerr = context.read<UseresProvider>();
    providerw = context.watch<UseresProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Useres"),
          centerTitle: true,
        ),
        body: providerw!.useresl2 == null
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: providerw!.useresl2!.dataModelList!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Text(
                        "${providerw!.useresl2!.dataModelList![index].id}"),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "${providerw!.useresl2!.dataModelList![index].email}"),
                        Text(
                            "${providerw!.useresl2!.dataModelList![index].first_name}"),
                        Text(
                            "${providerw!.useresl2!.dataModelList![index].last_name}"),
                      ],
                    ),
                  );
                },
              ),
      ),
    );
  }
}
