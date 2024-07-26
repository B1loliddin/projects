import 'package:flutter/material.dart';
import 'package:harry_potter_app/models/character_model.dart';
import 'package:harry_potter_app/pages/character_detail_page.dart';
import 'package:harry_potter_app/services/network_service.dart';
import 'package:lottie/lottie.dart';

class CharacterPage extends StatefulWidget {
  const CharacterPage({super.key});

  @override
  State<CharacterPage> createState() => _CharacterPageState();
}

class _CharacterPageState extends State<CharacterPage> {
  List<Character> characters = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<List<Character>> fetchData() async {
    final String? data = await Network.methodGet(api: Network.apiCharacters);

    return Network.parseCharacterList(data!);
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
                            builder: (_) => CharacterDetailPage(
                              slug: snapshot.data![index].attribute.slug!,
                            ),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          Expanded(
                            flex: 5,
                            child: snapshot.data![index].attribute.image !=
                                        null &&
                                    snapshot.data![index].attribute.image !=
                                        'https://static.wikia.nocookie.net/harrypotter/images/a/a6/Unidentified_19th-century_Flying_Instructor.jpeg' &&
                                    snapshot.data![index].attribute.image !=
                                        'https://static.wikia.nocookie.net/harrypotter/images/a/a4/Unnamed_19th-century_Herbology_Professor.png' &&
                                    snapshot.data![index].attribute.image !=
                                        'https://static.wikia.nocookie.net/harrypotter/images/3/38/Unidentified_19th-century_Potions_Master_HL.png'
                                ? Image.network(
                                    snapshot.data![index].attribute.image!,
                                  )
                                : Lottie.asset('assets/lotties/no_image.json'),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            snapshot.data![index].attribute.name,
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
