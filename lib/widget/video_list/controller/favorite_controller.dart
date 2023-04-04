
import 'package:flutter_test_module/widget/video_list/controller/video_controller.dart';

import '../server_data.dart';

class FavoriteController extends VideoController {
  @override
  String get spKey => 'favorite_video';

  @override
  String get videoData => ServerData.fetchFavoriteFromServer();
}