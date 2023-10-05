// client

import 'youtube_service.dart';

class YouTubeManager {
  final YouTubeService _service;

  YouTubeManager(this._service);

  Future<void> renderVideoPage(String id) async {
    final info = await _service.getVideoInfo(id);
    print('Rendering video page for: $info');
  }

  Future<void> renderListPanel() async {
    final videos = await _service.listVideos();
    print('Rendering list panel with videos: $videos');
  }
}
