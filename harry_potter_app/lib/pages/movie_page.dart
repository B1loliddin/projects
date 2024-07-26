import 'package:flutter/material.dart';
import 'package:harry_potter_app/models/movie_model.dart';
import 'package:harry_potter_app/pages/movie_detail_page.dart';
import 'package:harry_potter_app/services/network_service.dart';
import 'package:lottie/lottie.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({super.key});

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  List<Movie> movies = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<List<Movie>> fetchData() async {
    final String? data = await Network.methodGet(api: Network.apiMovies);

    return Network.parseMovieList(data!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: fetchData(),
        builder: (_, snapshot) {
          if (snapshot.hasData) {
            /// #cards
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 2 / 3,
                ),
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) {
                  return Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: MaterialButton(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => MovieDetailPage(
                              slug: snapshot.data![index].attribute.slug,
                            ),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Expanded(
                            flex: 5,
                            child: snapshot.data![index].attribute.poster !=
                                    null
                                ? Image.network(
                                    snapshot.data![index].attribute.poster!,
                                  )
                                : Lottie.asset('assets/lotties/no_image.json'),
                          ),
                          Text(
                            snapshot.data![index].attribute.title,
                            style: const TextStyle(
                              fontFamily: 'Lora',
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          }

          /// #loading
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        },
      ),
    );
  }
}
