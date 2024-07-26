import 'package:flutter/material.dart';
import 'package:harry_potter_app/models/book_model.dart';
import 'package:harry_potter_app/pages/book_detail_page.dart';
import 'package:harry_potter_app/services/network_service.dart';

class BookPage extends StatefulWidget {
  const BookPage({super.key});

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  List<Book> books = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<List<Book>> fetchData() async {
    final String? data = await Network.methodGet(api: Network.apiBooks);

    return Network.parseBookList(data!);
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
                            builder: (_) => BookDetailPage(
                              slug: snapshot.data![index].attribute.slug,
                            ),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          Expanded(
                            flex: 5,
                            child: Image.network(
                              snapshot.data![index].attribute.cover,
                            ),
                          ),
                          const SizedBox(height: 10),
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
