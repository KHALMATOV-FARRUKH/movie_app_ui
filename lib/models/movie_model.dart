class Movie {
  final String name;
  final String imagePath;
  final String videoPath;
  final String category;
  final int year;
  final Duration duration;

  const Movie({
    required this.name,
    required this.imagePath,
    required this.videoPath,
    required this.category,
    required this.year,
    required this.duration,
  });

  static const List<Movie> movies = [
    Movie(
      name: "Miyagi & Andy Panda - Minor",
      imagePath:
          "https://sun9-78.userapi.com/impg/BmWQATsqBTev0pEObU0zenbBJ8rwAwQczxy88A/e8afJ7whn-8.jpg?size=604x544&quality=96&sign=0bdd15d03279897cea89a4e295fc9268&type=album",
      videoPath: "assets/videos/minor.mp4",
      category: "Hip - Hop",
      year: 2020,
      duration: Duration(minutes: 03, seconds: 02),
    ),
    Movie(
      name: "MiyaGi - Колибри",
      imagePath:
      "https://sun9-86.userapi.com/impg/tFgzuygU7PfZPU8NZ0qCP4-5Q8eT9w1SYwABHg/uXbOKO5QtgA.jpg?size=572x418&quality=96&sign=b407ea189147ab52dcceb93788b3fd38&type=album",
      videoPath: "assets/videos/kolibri.mp4",
      category: "Hip - Hop",
      year: 2020,
      duration: Duration(minutes: 03, seconds: 53),
    ),
    Movie(
      name: "Miyagi - Samurai",
      imagePath:
      "https://i.pinimg.com/736x/10/2a/49/102a4951382850127b36f24656bf3169.jpg",
      videoPath: "assets/videos/samurai.mp4",
      category: "Hip - Hop",
      year: 2022,
      duration: Duration(minutes: 03, seconds: 53),
    ),
    Movie(
      name: "Miyagi & Andy Panda - Там Ревели Горы",
      imagePath:
      "https://cdn.promodj.com/afs/8585f2a3620e22d39afcddeb2c00f67e12%3Aresize%3A2000x2000%3Asame%3A50c8b0",
      videoPath: "assets/videos/tam_reveli_gori.mp4",
      category: "Hip - Hop",
      year: 2020,
      duration: Duration(minutes: 03, seconds: 11),
    ),
    Movie(
      name: "Miyagi - Marlboro",
      imagePath:
      "https://sun9-76.userapi.com/impg/VaSSmVD0pKODEaT-Ldpmh8OVpeF8wA_bNaKtJQ/E6ZR4-gZNnY.jpg?size=604x604&quality=96&sign=766a39486c93736c5f321fd979f743fc&type=album",
      videoPath: "assets/videos/marlboro.mp4",
      category: "Hip - Hop",
      year: 2019,
      duration: Duration(minutes: 04, seconds: 03),
    ),
    Movie(
      name: "Miyagi & Эндшпиль - Санавабич",
      imagePath:
      "https://mypensia.ru/uploads/images/3/0/h/30hz_miyagi_endshpil_sanavabich.jpg",
      videoPath: "assets/videos/sanavabitch.mp4",
      category: "Hip - Hop",
      year: 2015,
      duration: Duration(minutes: 03, seconds: 06),
    ),
    Movie(
      name: "Miyagi & Эндшпиль feat. Рем Дигга - I Got Love",
      imagePath:
      "https://static.mixupload.ru/n5/media/track/2360/934/cover_orig.jpg",
      videoPath: "assets/videos/i_got_love.mp4",
      category: "Hip - Hop",
      year: 2016,
      duration: Duration(minutes: 04, seconds: 36),
    ),
    Movie(
      name: "Miyagi - Топи До Талого Братан",
      imagePath:
      "https://avatars.mds.yandex.net/i?id=8e9751e03cb2ac0d2e014e40f6474cb1-5178729-images-thumbs&n=13",
      videoPath: "assets/videos/do_talogo.mp4",
      category: "Hip - Hop",
      year: 2017,
      duration: Duration(minutes: 02, seconds: 18),
    ),
    Movie(
      name: "Miyagi & Эндшпиль - ДЛБМ",
      imagePath:
      "https://s.mxmcdn.net/images-storage/albums4/7/2/7/8/5/8/37858727_800_800.jpg",
      videoPath: "assets/videos/dolbim.mp4",
      category: "Hip - Hop",
      year: 2017,
      duration: Duration(minutes: 02, seconds: 34),
    ),
  ];
}
