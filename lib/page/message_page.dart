import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  final String params;

  const MessagePage({Key? key, this.params = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("消息页面"),
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