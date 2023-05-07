import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_api_example/controller/dataController.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final viewModel = ref.watch(getDateFuture);

    return Scaffold(
        appBar: AppBar(
          title: const Text("API"),
        ),
        body: viewModel.listDataModel.isEmpty
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: viewModel.listDataModel.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(viewModel.listDataModel[index].title),
                      subtitle: Text(viewModel.listDataModel[index].title),
                    ),
                  );
                }));
  }
}
