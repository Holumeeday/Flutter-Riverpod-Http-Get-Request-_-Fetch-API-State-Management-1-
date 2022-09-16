import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterriverpodhttprequest/dataprovider/data_provider.dart';


import '../model/usermodel.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final _data = ref.watch(userDataProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('RiverPod Tutorial'),
      ),
      body: _data.when(
          data: (_data){
            List<UserModel> userList = _data.map((e) => e).toList();
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: userList.length,
                        itemBuilder:(_, index){
                          return Card(
                            color: Colors.blueAccent,
                            elevation: 5,
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: ListTile(
                              title: Text(userList[index].name!, style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold) ,),
                              subtitle: Text(userList[index].email!),
                              trailing: Container(
                                width: 90,
                                height: 90,
                                decoration: BoxDecoration(
                                  color: Colors.greenAccent,
                                  borderRadius: BorderRadius.circular(100)
                                ),

                              ),
                            ),
                          );
                        }
                    ),
                  )
                ],
              ),
            );
          },
          error: (err, s) => Text(err.toString()),
          loading: ()=> const Center(child: CircularProgressIndicator())
      ),
    );
  }
}
