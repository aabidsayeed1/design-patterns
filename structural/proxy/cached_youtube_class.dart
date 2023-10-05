// proxy

import 'youtube_service.dart';

class CachedYouTubeClass implements YouTubeService {
  final YouTubeService _service;

  List<String>? _listCache;
  Map<String, String>? _videoCache;

  final Set<String> _downloadedVideos = {};

  CachedYouTubeClass(this._service);

  Future<List<String>> listVideos() async {
    if (_listCache == null) {
      _listCache = await _service.listVideos();
    }
    return _listCache!;
  }

  Future<String> getVideoInfo(String id) async {
    if (_videoCache == null || !_videoCache!.containsKey(id)) {
      final info = await _service.getVideoInfo(id);
      _videoCache ??= {};
      _videoCache![id] = info;
    }
    return _videoCache![id]!;
  }

  Future<void> downloadVideo(String id) async {
    if (!_downloadExists(id)) {
      await _service.downloadVideo(id);
      _downloadedVideos.add(id);
    } else {
      print('Video $id already downloaded');
    }
  }

  bool _downloadExists(String id) => _downloadedVideos.contains(id);
}
