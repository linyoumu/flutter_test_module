import 'package:flutter/material.dart';
import 'package:flutter_test_module/widget/video_list/controller/video_controller.dart';
import 'package:player/player.dart';
import 'package:player/video_view.dart';
import 'package:fijkplayer/fijkplayer.dart';

import '../../../gen/assets.gen.dart';
import '../../../main.dart';
import '../../../my_router.dart';
import '../../t_image.dart';

class VideoList extends StatefulWidget {
  final VideoController controller;

  const VideoList(this.controller, {super.key});

  @override
  State<StatefulWidget> createState() => _VideoListState();
}

class _VideoListState extends State<VideoList> {
  @override
  void initState() {
    super.initState();

    widget.controller.init().then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, childAspectRatio: 0.75),
            itemCount: widget.controller.dataList?.length,
            itemBuilder: (context, index) {
              // 实际羡慕中， 通过dateList[index]取出url
              return GestureDetector(
                  child: widget.controller.dataList == null
                      ? Container() // 加载提示或者骨架屏
                      : Container(
                      decoration: BoxDecoration(border: Border.all(color: const Color(0xfffef5ff), width: 0)),
                      child: Stack(
                        children: [
                          AbsorbPointer(
                              absorbing: true,
                              child: VideoView(
                                  Player()
                                    ..setLoop(0)
                                    ..setCommonDataSource(widget.controller.dataList![index].url,
                                        type: SourceType.net, autoPlay: false),
                                  fit: FijkFit.cover)),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10, left: 15),
                            child: Row(
                              children: [
                                TImage(Assets.images.play.path, height: 12),
                                Text(widget.controller.count.toString(), style: const TextStyle(color: Colors.white, fontSize: 12))
                              ],
                            ),
                          )
                        ],
                      )),
                  onTap: () async =>
                  await router.push(name: MyRouter.playerPage, arguments: widget.controller.dataList![index].url));
            }));
  }
}