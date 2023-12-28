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
    context.read<UseresProvider>().useresgetData();
  }

  @override
  Widget build(BuildContext context) {
    providerr = context.read<UseresProvider>();
    providerw = context.watch<UseresProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("User"),
          centerTitle: true,
        ),
        body: providerw!.useresModel == null
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: providerw!.useresModel!.dataModelList!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Text(
                        "${providerw!.useresModel!.dataModelList![index].id}"),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "${providerw!.useresModel!.dataModelList![index].email}"),
                        Text(
                            "${providerw!.useresModel!.dataModelList![index].first_name}"),
                        Text(
                            "${providerw!.useresModel!.dataModelList![index].last_name}"),
                      ],
                    ),
                    subtitle: Image.network(
                      "${providerw!.useresModel!.supportModel!.url}",
                      height: 100,
                      width: 100,
                    ),
                  );
                },
              ),
      ),
    );
  }
}
