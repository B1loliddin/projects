import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:harry_potter_app/models/movie_model.dart';
import 'package:harry_potter_app/services/network_service.dart';
import 'package:lottie/lottie.dart';

class MovieDetailPage extends StatefulWidget {
  final String slug;

  const MovieDetailPage({
    super.key,
    required this.slug,
  });

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<Movie> fetchData() async {
    final String? data =
        await Network.methodGet(api: Network.apiMovies, slug: widget.slug);

    return Network.parseMovie(data!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: fetchData(),
        builder: (_, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              {
                if (snapshot.hasData) {
                  /// #movie info
                  return Stack(
                    alignment: const Alignment(0, 0.9),
                    children: [
                      /// #main information
                      ListView(
                        children: [
                          /// #image
                          SizedBox(
                            child: snapshot.data!.attribute.poster != null
                                ? Image.network(
                                    snapshot.data!.attribute.poster!,
                                    fit: BoxFit.fitWidth,
                                  )
                                : Lottie.asset('assets/lotties/no_image.json'),
                          ),

                          /// #title
                          Padding(
                            padding: const EdgeInsets.only(left: 16, right: 26),
                            child: FittedBox(
                              child: Text(
                                snapshot.data!.attribute.title,
                                style: const TextStyle(
                                  fontFamily: 'Lora',
                                  fontWeight: FontWeight.w900,
                                  fontSize: 32,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 14),

                          /// #category
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  height: 32,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFF49443),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100)),
                                  ),
                                  child: Text(
                                    '${snapshot.data!.type!.substring(0, 1).toUpperCase()}${snapshot.data!.type!.substring(1)}',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 24),

                          /// #director
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              'Director ${snapshot.data!.attribute.directors[0]}',
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),

                          /// #producers
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Wrap(
                              children: [
                                Text(
                                  'Producers: ',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white.withOpacity(0.7),
                                  ),
                                ),
                                for (int i = 0;
                                    i <
                                        snapshot
                                            .data!.attribute.producers.length;
                                    i++)
                                  Text(
                                    '${snapshot.data!.attribute.producers[i]} ',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white.withOpacity(0.7),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 24),

                          /// #introduction
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              'Summary',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 26,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),

                          /// #summary
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              snapshot.data!.attribute.summary,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white.withOpacity(0.7),
                              ),
                            ),
                          ),

                          const SizedBox(height: 100),
                        ],
                      ),

                      /// #watch now button
                      Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          /// #save button
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 1.2,
                              height: 56,
                              alignment: Alignment.centerRight,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                color: const Color(0xFF2F2F3B),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                border: GradientBoxBorder(
                                  width: 1.5,
                                  gradient: LinearGradient(
                                    colors: [
                                      const Color(0xFFFFFFFF).withOpacity(0),
                                      const Color(0xFFFFFFFF).withOpacity(0),
                                      const Color(0xFFFFFFFF).withOpacity(0),
                                      const Color(0xFFFFFFFF).withOpacity(0),
                                      const Color(0xFFFFFFFF),
                                    ],
                                  ),
                                ),
                              ),
                              child: const Text(
                                'Save',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),

                          /// #watch now button
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 1.6,
                              height: 56,
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                border: GradientBoxBorder(
                                  width: 1.5,
                                  gradient: LinearGradient(
                                    colors: [
                                      const Color(0xFFFFFFFF),
                                      const Color(0xFFFFFFFF).withOpacity(0),
                                    ],
                                  ),
                                ),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF1975CC),
                                    Color(0xFF11B0D7),
                                  ],
                                ),
                              ),
                              child: MaterialButton(
                                onPressed: () {},
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: const Text(
                                  'Watch Now',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                }
              }
            default:
              {}
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
