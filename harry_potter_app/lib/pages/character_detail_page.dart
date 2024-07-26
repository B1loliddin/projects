import 'package:flutter/material.dart';
import 'package:harry_potter_app/models/character_model.dart';
import 'package:harry_potter_app/services/network_service.dart';
import 'package:lottie/lottie.dart';

class CharacterDetailPage extends StatefulWidget {
  final String slug;

  const CharacterDetailPage({
    super.key,
    required this.slug,
  });

  @override
  State<CharacterDetailPage> createState() => _CharacterDetailPageState();
}

class _CharacterDetailPageState extends State<CharacterDetailPage> {
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<Character> fetchData() async {
    final String? data =
        await Network.methodGet(api: Network.apiCharacters, slug: widget.slug);

    return Network.parseCharacter(data!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: fetchData(),
        builder: (_, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              {
                /// #loading
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              }
            default:
              {}
          }

          return ListView(
            children: [
              /// #image
              SizedBox(
                child: snapshot.data!.attribute.image != null &&
                        snapshot.data!.attribute.image !=
                            'https://static.wikia.nocookie.net/harrypotter/images/a/a6/Unidentified_19th-century_Flying_Instructor.jpeg' &&
                        snapshot.data!.attribute.image !=
                            'https://static.wikia.nocookie.net/harrypotter/images/a/a4/Unnamed_19th-century_Herbology_Professor.png' &&
                        snapshot.data!.attribute.image !=
                            'https://static.wikia.nocookie.net/harrypotter/images/3/38/Unidentified_19th-century_Potions_Master_HL.png'
                    ? Image.network(
                        snapshot.data!.attribute.image!,
                        fit: BoxFit.fitWidth,
                      )
                    : Lottie.asset('assets/lotties/no_image.json'),
              ),
              SizedBox(height: 10),

              /// #title
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 26),
                child: Text(
                  snapshot.data!.attribute.name,
                  style: const TextStyle(
                    fontFamily: 'Lora',
                    fontWeight: FontWeight.w700,
                    fontSize: 26,
                  ),
                ),
              ),
              SizedBox(height: 14),

              /// #category
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 32,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Color(0xFF124AFF),
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                      child: Text(
                        '${snapshot.data!.type.substring(0, 1).toUpperCase()}${snapshot.data!.type.substring(1)}',
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),

              // /// #jobs
              // Padding(
              //   padding: const EdgeInsets.only(left: 16, right: 26),
              //   child: Wrap(
              //     children: [
              //       Text(
              //         snapshot.data!.attribute.jobs!.length == 1
              //             ? 'Job: '
              //             : 'Jobs: ',
              //         style: TextStyle(
              //           fontSize: 16,
              //           color: Colors.white.withOpacity(0.7),
              //         ),
              //       ),
              //       for (int i = 0;
              //           i < snapshot.data!.attribute.jobs!.length;
              //           i++)
              //         Text(
              //           snapshot.data!.attribute.jobs![i],
              //           style: TextStyle(
              //             fontSize: 16,
              //             color: Colors.white.withOpacity(0.7),
              //           ),
              //         )
              //     ],
              //   ),
              // ),
              const SizedBox(height: 15),

              // /// #family members
              // Padding(
              //   padding: const EdgeInsets.only(left: 16, right: 26),
              //   child: Wrap(
              //     children: [
              //       Text(
              //         snapshot.data!.attribute.familyMembers!.length == 1
              //             ? 'Family Member: '
              //             : 'Family Members: ',
              //         style: TextStyle(
              //           fontSize: 16,
              //           color: Colors.white.withOpacity(0.7),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),

              /// #born in
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 26),
                child: Wrap(
                  children: [
                    Text(
                      'Born in: ',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                    snapshot.data!.attribute.born != null
                        ? Text(
                            snapshot.data!.attribute.born!,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.7),
                            ),
                          )
                        : Text(
                            'Not Defined',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.7),
                            ),
                          )
                  ],
                ),
              ),

              /// #gender
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 26),
                child: Wrap(
                  children: [
                    Text(
                      'Gender: ',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                    snapshot.data!.attribute.gender != null
                        ? Text(
                            snapshot.data!.attribute.gender!,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.7),
                            ),
                          )
                        : Text(
                            'Not Defined',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.7),
                            ),
                          )
                  ],
                ),
              ),

              /// #house
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 26),
                child: Wrap(
                  children: [
                    Text(
                      'House: ',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                    snapshot.data!.attribute.house != null
                        ? Text(
                            snapshot.data!.attribute.house!,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.7),
                            ),
                          )
                        : Text(
                            'Not Defined',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.7),
                            ),
                          )
                  ],
                ),
              ),

              /// #species
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 26),
                child: Wrap(
                  children: [
                    Text(
                      'Species: ',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                    snapshot.data!.attribute.species != null
                        ? Text(
                            snapshot.data!.attribute.species!,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.7),
                            ),
                          )
                        : Text(
                            'Not Defined',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.7),
                            ),
                          )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
