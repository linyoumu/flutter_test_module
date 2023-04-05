import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_test_module/my_router.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:path_provider/path_provider.dart';
import 'package:player/player.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
  init();
}

String sdcardPath = '/storage/emulated/0/Android/data/com.example.flutter_test_module/files';

init() {
  // 初始化页面路由，获取Native传递的参数，放入路由表
  print('MOOC- init route is : ${window.defaultRouteName}');
  router.push(name: window.defaultRouteName);

  getExternalStorageDirectory().then((value) {
    sdcardPath = value?.path ?? sdcardPath;
    Player.setCachePath(sdcardPath);
    print('MOOC - sdcard path: $sdcardPath');
  });
}

MyRouter router = MyRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // GetX改造步骤：1、修改MaterialApp成GetMaterialApp
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Router(
        routerDelegate: router,
        backButtonDispatcher: RootBackButtonDispatcher(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  late SharedPreferences sp;

  void _incrementCounter() async {
    // setState(() {
    //   _counter++;
    // });

    print('MOOC Start second page');
    var ack = await router.push(name: MyRouter.minePage, arguments: 'Hello from mainPage');
    print('MOOC Ack: $ack');

    // var name = sp.getString('name');
    // print('MOOC- sp-name : $name');
  }

  @override
  void initState() {
    super.initState();

    getFlutterInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Future<void> getFlutterInfo() async {
    final Map<String, dynamic> map = {'name': 'flutter', 'version': '3.0.1', 'language': 'dart', 'android_api': 31};
    // String result = await _channel.invokeMethod('getFlutterInfo', map);
    // print('MOOC'MOOC'Method invoke result: $result');
    // print('MOOC'MOOC'map is : ${map['name']}');

    sp = await SharedPreferences.getInstance();
    sp.setString('name', map['name']);
  }

}

/*
  // 1、创建一个Chanel实例，传入通道名称，名称需要和Native侧完全一致
  // static const _channel = BasicMessageChannel('methodChannel', StringCodec());
  // static const _channel = EventChannel('methodChannel');
  static const _channel = MethodChannel('methodChannel');

  Future<void> _sendMessage() async {
  String? message = await _channel.send('hello from dart');
    print('send message: $message');
  }

  Future<void> getFlutterInfo() async {
    // BasicMessageChannel
    // _channel.setMessageHandler((message) async {
    //   print('receive message: $message');
    //   setState(() {
    //     _message = message;
    //   });
    //   return 'ACK from dart';
    // });

    // EventChannel
    // _channel.receiveBroadcastStream().listen((event) {
    //   print('Receive event: $event');
    //   setState(() {
    //     _message = event;
    //   });
    // }, onError: (error) {
    //   print('Recevie error: $error');
    // }, cancelOnError: true);

    //MethodChannel
    final Map<String, dynamic> map = {'name': 'flutter', 'version': '3.0.1', 'language': 'dart', 'android_api': 31};
    String result = await _channel.invokeMethod('getFlutterInfo', map);
    print('Method invoke result: $result');
    print('map is : ${map['name']}');
  }
* */