import 'package:flutter/material.dart';
import 'package:movie_app_ui/models/movie_model.dart';
import 'package:movie_app_ui/screens/movie_screen.dart';
import 'package:movie_app_ui/widgets/movie_list_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Movie> movies = Movie.movies;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 135,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        flexibleSpace: ClipPath(
          clipper: _CustomClipper(),
          child: Container(
            height: 180,
            width: MediaQuery.of(context).size.width,
            color: const Color(0xFF000b49),
            child: Center(
              child: Text(
                "Miyagi and Andy Panda",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 150.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // RichText(
              //   text: TextSpan(
              //     style: Theme.of(context).textTheme.headline6,
              //     children: [
              //       const TextSpan(
              //         text: "clips of ",
              //       ),
              //       TextSpan(
              //         text: "Miyagi",
              //         style: Theme.of(context)
              //             .textTheme
              //             .headline6!
              //             .copyWith(fontWeight: FontWeight.bold),
              //       ),
              //       const TextSpan(
              //         text: " and ",
              //       ),
              //       TextSpan(
              //         text: "Andy Panda",
              //         style: Theme.of(context)
              //             .textTheme
              //             .headline6!
              //             .copyWith(fontWeight: FontWeight.bold),
              //       ),
              //     ],
              //   ),
              // ),
              const SizedBox(height: 20),
              for (final movie in movies)
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MovieScreen(movie: movie),
                      ),
                    );
                  },
                  child: MovieListItem(
                    imageUrl: movie.imagePath,
                    name: movie.name,
                    information:
                        '${movie.year} | ${movie.category} | ${movie.duration.inHours}h ${movie.duration.inMinutes.remainder(60)}m',
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();

    path.lineTo(0, height - 50);
    path.quadraticBezierTo(width / 2, height, width, height - 50);
    path.lineTo(width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
