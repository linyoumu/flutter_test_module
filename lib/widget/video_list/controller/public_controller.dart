import 'package:flutter_test_module/widget/video_list/controller/video_controller.dart';

import '../server_data.dart';

class PublicController extends VideoController {
  @override
  String get spKey => 'public_video';

  @override
  String get videoData => ServerData.fetchDataFromServer();
}