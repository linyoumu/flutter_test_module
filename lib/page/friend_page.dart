import 'package:flutter/material.dart';

class FriendPage extends StatelessWidget {
  final String params;

  const FriendPage({Key? key, this.params = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("朋友页面"),
      ),
      body: Center(
          child: GestureDetector(
              child: const Text('待完成Flutter页面'),
              onTap: (){
                var result = 'Ack from messagePage';
              })
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}