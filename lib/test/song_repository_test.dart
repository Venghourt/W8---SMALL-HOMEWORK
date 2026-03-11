import 'package:smallhomework/data/repositories/songs/song_repository_mock.dart';

void main() async {
  //   Instantiate the  song_repository_mock
  final repo = SongRepositoryMock();
  // Test both the success and the failure of the post request
  // Handle the Future using 2 ways  (2 tests)
  // - Using then() with .catchError().
  repo
      .fetchSongById("s1")
      .then((song) {
        print(song?.title);
      })
      .catchError((error) {
        print(error);
      });
  // - Using async/await with try/catch.
  try {
    var song = await repo.fetchSongById("s1");
    print(song?.title);
  } catch (error) {
    print(error);
  }
}
