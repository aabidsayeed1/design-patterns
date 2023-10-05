import 'cached_youtube_class.dart';
import 'third_party_youtube_class.dart';
import 'youtube_manager.dart';

Future<void> main() async {
  final naiveManager = YouTubeManager(ThirdPartyYouTubeClass());
  final smartManager = YouTubeManager(CachedYouTubeClass());

  print('Directly using the youtube 3rd part class \n- - - -\n');
  final naiveTime = await test(naiveManager);

  print('\nUsing the cache class proxy \n- - - -\n');
  final smartTime = await test(smartManager);

  final timeSaved = naiveTime - smartTime;
  print('\nTime saved by caching proxy: ${timeSaved}ms');
}

Future<int> test(YouTubeManager manager) async {
  final startTime = DateTime.now();

  // User behavior in your app:
  await manager.renderListPanel();
  await manager.renderVideoPage("catzzzzzzzzz");

  await manager.renderListPanel();
  await manager.renderVideoPage("dancesvideoo");

  // Users might visit the same page quite often.
  await manager.renderVideoPage("catzzzzzzzzz");
  await manager.renderVideoPage("someothervid");
  await manager.renderVideoPage("dancesvideo");

  final endTime = DateTime.now();
  final elapsedTime = endTime.difference(startTime).inMilliseconds;

  print('\nTime elapsed: ${elapsedTime}ms');
  return elapsedTime;
}
