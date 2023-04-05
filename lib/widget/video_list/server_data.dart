class ServerData {
  // 本地mock数据，实际上是模拟网络数据
  static String fetchDataFromServer() => """[
    {
        "title": "示例视频",
        "url": "http://vfx.mtime.cn/Video/2019/03/19/mp4/190319212559089721.mp4",
        "playCount": 88
    },
    {
        "title": "示例视频",
        "url": "https://prod-streaming-video-msn-com.akamaized.net/a8c412fa-f696-4ff2-9c76-e8ed9cdffe0f/604a87fc-e7bc-463e-8d56-cde7e661d690.mp4",
        "playCount": 88
    },
    {
        "title": "示例视频",
        "url": "https://stream7.iqilu.com/10339/article/202002/18/2fca1c77730e54c7b500573c2437003f.mp4",
        "playCount": 88
    },
    {
        "title": "示例视频",
        "url": "https://prod-streaming-video-msn-com.akamaized.net/fe13f13c-c2cc-4998-b525-038b23bfa9b5/1a9d30ca-54be-411e-8b09-d72ef4488e05.mp4",
        "playCount": 88
    },
    {
        "title": "示例视频",
        "url": "https://vfx.mtime.cn/Video/2019/08/24/mp4/190824113155647173.mp4",
        "playCount": 88
    },
    {
        "title": "示例视频",
        "url": "https://prod-streaming-video-msn-com.akamaized.net/e908e91f-370f-49ad-b4ce-775b7e7a05b4/a6287f74-46f0-42f9-b5d9-997f00585696.mp4",
        "playCount": 88
    },
    {
        "title": "示例视频",
        "url": "http://vfx.mtime.cn/Video/2019/03/14/mp4/190314102306987969.mp4",
        "playCount": 88
    },
    {
        "title": "示例视频",
        "url": "http://vfx.mtime.cn/Video/2019/03/12/mp4/190312143927981075.mp4",
        "playCount": 88
    },
    {
        "title": "示例视频",
        "url": "http://vfx.mtime.cn/Video/2019/03/12/mp4/190312083533415853.mp4",
        "playCount": 88
    },
    {
        "title": "示例视频",
        "url": "http://vfx.mtime.cn/Video/2019/03/09/mp4/190309153658147087.mp4",
        "playCount": 88
    }
]""";

  static String fetchPrivateFromServer() => """[
    {
        "title": "示例视频",
        "url": "https://v-cdn.zjol.com.cn/280443.mp4",
        "playCount": 88
    },
    {
        "title": "示例视频",
        "url": "http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4",
        "playCount": 88
    },
    {
        "title": "示例视频",
        "url": "http://vjs.zencdn.net/v/oceans.mp4",
        "playCount": 88
    }
]""";

  static String fetchMarkFromServer() => """[
    {
        "title": "示例视频",
        "url": "https://prod-streaming-video-msn-com.akamaized.net/b7014b7e-b38f-4a64-bd95-4a28a8ef6dee/113a2bf3-3a5f-45d4-8b6f-e40ce8559da3.mp4",
        "playCount": 88
    },
    {
        "title": "示例视频",
        "url": "https://stream7.iqilu.com/10339/article/202002/18/2fca1c77730e54c7b500573c2437003f.mp4",
        "playCount": 88
    },
    {
        "title": "示例视频",
        "url": "https://stream7.iqilu.com/10339/upload_transcode/202002/17/20200217021133Eggh6zdlAO.mp4",
        "playCount": 88
    }
]""";

  static String fetchFavoriteFromServer() => """[
    {
        "title": "示例视频",
        "url": "https://stream7.iqilu.com/10339/article/202002/17/4417a27b1a656f4779eaa005ecd1a1a0.mp4",
        "playCount": 88
    },
    {
        "title": "示例视频",
        "url": "https://stream7.iqilu.com/10339/upload_transcode/202002/17/20200217021133Eggh6zdlAO.mp4",
        "playCount": 88
    },
    {
        "title": "示例视频",
        "url": "https://stream7.iqilu.com/10339/upload_transcode/202002/09/20200209104902N3v5Vpxuvb.mp4",
        "playCount": 88
    },
    {
        "title": "示例视频",
        "url": "https://stream7.iqilu.com/10339/article/202002/18/2fca1c77730e54c7b500573c2437003f.mp4",
        "playCount": 88
    },
    {
        "title": "示例视频",
        "url": "https://stream7.iqilu.com/10339/upload_transcode/202002/09/20200209105011F0zPoYzHry.mp4",
        "playCount": 88
    }
]""";

}
