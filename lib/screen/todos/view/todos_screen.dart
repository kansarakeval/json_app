import 'package:flutter/material.dart';
import 'package:json_app/screen/todos/provider/todos_provider.dart';
import 'package:provider/provider.dart';

class TodosScreen extends StatefulWidget {
  const TodosScreen({super.key});

  @override
  State<TodosScreen> createState() => _TodosScreenState();
}

class _TodosScreenState extends State<TodosScreen> {
  TodosProvider? providerr;
  TodosProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<TodosProvider>().getData();
  }
  @override
  Widget build(BuildContext context) {
    providerr = context.read<TodosProvider>();
    providerw = context.watch<TodosProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Todos"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: providerw!.todosl2.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text("${providerw!.todosl2[index].id}",style: TextStyle(fontWeight: FontWeight.bold),),
              title: Text("${providerw!.todosl2[index].title}",style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text("${providerw!.todosl2[index].completed}"),
            );
          },
        ),
      ),
    );
  }
}
