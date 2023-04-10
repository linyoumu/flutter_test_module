import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_module/widget/favorite_gesture/favorite_gesture.dart';
import 'package:path_provider/path_provider.dart';
import 'package:player/player.dart';
import 'package:player/video_view.dart';

import '../../main.dart';

class PlayerPage extends StatefulWidget {
  final String url;

  const PlayerPage(this.url);

  @override
  State<StatefulWidget> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  String version = 'null';
  late Player player;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    player = Player();
    print('FlutterModule video url is :${widget.url}');
    player.setCommonDataSource(widget.url, type: SourceType.net, autoPlay: true);
    return Scaffold(
      body: FavoriteGesture(
          child: GestureDetector(
              onLongPress: () {
                // 长按视频，弹出对话框
                showDialog(
                    context: context,
                    builder: (context) {
                      // 构建Dialog UI
                      return AlertDialog(
                        title: const Text('提示'),
                        content: const Text('确认下载本视频吗？'),
                        actions: <Widget>[
                          TextButton(onPressed: () => Navigator.pop(context, 'cancel'), child: const Text('取消')),
                          TextButton(
                              onPressed: () {
                                _saveVideo(widget.url);
                                Navigator.pop(context, 'cancel');
                              },
                              child: const Text('确认'))
                        ],
                      );
                    });
              },
              child: VideoView(player))),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(player.isPlayable()) {
            player.stop();
          }
          router.popRoute();
        },
        tooltip: '退出页面',
        child: const Text("退出页面"),
      ),
    );
  }

  _saveVideo(String url) async {
    Uri uri = Uri.parse(url);
    String name = uri.pathSegments.last;
    print('FlutterModule save video: $url');

    var dir = await getExternalStorageDirectory();

    String savePath = "${dir?.path}/$name";

    print('FlutterModule savePath: $savePath');

    // 开启下载，将url下载到的视频保存到savePath当中
    var result = await Dio().download(url, savePath, onReceiveProgress: (count, total) {
      var progress = '${(count / total * 100).toInt()}%';
      print('FlutterModule progress: $progress');
    });
    print('FlutterModule result: $result');
  }

  @override
  void dispose() {
    super.dispose();
    player.release();
  }
}