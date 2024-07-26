import 'package:flutter/material.dart';
import 'package:harry_potter_app/models/book_model.dart';
import 'package:harry_potter_app/services/network_service.dart';

class BookDetailPage extends StatefulWidget {
  final String slug;

  const BookDetailPage({
    super.key,
    required this.slug,
  });

  @override
  State<BookDetailPage> createState() => _BookDetailPageState();
}

class _BookDetailPageState extends State<BookDetailPage> {
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<Book> fetchData() async {
    final String? data =
        await Network.methodGet(api: Network.apiBooks, slug: widget.slug);

    return Network.parseBook(data!);
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
                  return ListView(
                    children: [
                      /// #image
                      SizedBox(
                        child: Image.network(
                          snapshot.data!.attribute.cover,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      const SizedBox(height: 10),

                      /// #title
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 26),
                        child: FittedBox(
                          child: Text(
                            snapshot.data!.attribute.title,
                            style: const TextStyle(
                              fontFamily: 'Lora',
                              fontWeight: FontWeight.w900,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: Color(0xFFF49443),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                              ),
                              child: Text(
                                '${snapshot.data!.type.substring(0, 1).toUpperCase()}${snapshot.data!.type.substring(1)}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),

                      /// #author
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          'Author ${snapshot.data!.attribute.author}',
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const SizedBox(height: 14),

                      /// #dedication
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          'Dedication: ${snapshot.data!.attribute.dedication}',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),

                      /// #pages
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          'Pages: ${snapshot.data!.attribute.pages}',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white.withOpacity(0.7),
                          ),
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
