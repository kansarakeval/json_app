import 'package:flutter/material.dart';
import 'package:json_app/screen/user/provider/user_provider.dart';
import 'package:provider/provider.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  UserProvider? providerr;
  UserProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<UserProvider>().getUserData();
  }
  @override
  Widget build(BuildContext context) {
    providerr = context.read<UserProvider>();
    providerw = context.watch<UserProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("User"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: providerw!.userl2.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text("${providerw!.userl2[index].id}"),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${providerw!.userl2[index].name}"),
                  Text("${providerw!.userl2[index].email}"),
                ],
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("- ${providerw!.userl2[index].companyModel!.catchPhrase}"),
                  Text("  - ${providerw!.userl2[index].companyModel!.bs}"),
                ],
              ),
              trailing: Text("${providerw!.userl2[index].addressModel!.geoModel!.lat}/${providerw!.userl2[index].addressModel!.geoModel!.lng}"),
            );
          },
        ),
      ),
    );
  }
}
