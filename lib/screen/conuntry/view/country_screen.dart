import 'package:flutter/material.dart';
import 'package:json_app/screen/conuntry/provider/country_provider.dart';
import 'package:provider/provider.dart';

class CountryScreen extends StatefulWidget {
  const CountryScreen({super.key});

  @override
  State<CountryScreen> createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
  CountryProvider? providerr;
  CountryProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<CountryProvider>().getCounteryData();
  }
  @override
  Widget build(BuildContext context) {
    providerr = context.read<CountryProvider>();
    providerw = context.watch<CountryProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("countery"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: providerw!.counteryl2.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${providerw!.counteryl2[index].cuntryNameModel!.official}"),
                  Text("${providerw!.counteryl2[index].cuntryNameModel!.common}"),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
