// service

// hardcoded delays to simulate response time

import 'dart:async';

import 'youtube_service.dart';

class ThirdPartyYouTubeClass implements YouTubeService {
  Future<List<String>> listVideos() async {
    await Future.delayed(Duration(seconds: 2));
    return ['video1', 'video2', 'video3'];
  }

  Future<String> getVideoInfo(String id) async {
    await Future.delayed(Duration(seconds: 1));
    return 'Video: $id';
  }

  Future<void> downloadVideo(String id) async {
    print('Downloading video: $id');
    await Future.delayed(Duration(seconds: 3));
    print('Video Downloaded');
  }
}
