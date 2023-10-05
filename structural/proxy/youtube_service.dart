//service interface

abstract class YouTubeService {
  Future<List<String>> listVideos();
  Future<String> getVideoInfo(String id);
  Future<void> downloadVideo(String id);
}
