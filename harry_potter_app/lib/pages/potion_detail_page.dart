import 'package:flutter/material.dart';
import 'package:harry_potter_app/models/potion_model.dart';
import 'package:harry_potter_app/services/network_service.dart';

class PotionDetailPage extends StatefulWidget {
  final String slug;

  const PotionDetailPage({
    super.key,
    required this.slug,
  });

  @override
  State<PotionDetailPage> createState() => _PotionDetailPageState();
}

class _PotionDetailPageState extends State<PotionDetailPage> {
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<Potion> fetchData() async {
    final String? data =
        await Network.methodGet(api: Network.apiPotions, slug: widget.slug);

    return Network.parsePotion(data!);
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
                  /// #potion info
                  return ListView(
                    children: [
                      /// #image
                      Image.network(snapshot.data!.attribute.image!),

                      /// #name
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 26),
                        child: Text(
                          snapshot.data!.attribute.name,
                          style: const TextStyle(
                            fontFamily: 'Lora',
                            fontWeight: FontWeight.w700,
                            fontSize: 28,
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
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 24),

                      /// #characteristics
                      const Padding(
                        padding: EdgeInsets.only(left: 16, right: 26),
                        child: Text(
                          'Characteristics',
                          style: TextStyle(
                            fontFamily: 'Lora',
                            fontWeight: FontWeight.w700,
                            fontSize: 28,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),

                      /// #effect
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 26),
                        child: Wrap(
                          children: [
                            Text(
                              'Effect: ',
                              style: TextStyle(
                                  fontFamily: 'Lora',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.white.withOpacity(0.7)),
                            ),
                            Text(
                              snapshot.data!.attribute.effect != null
                                  ? snapshot.data!.attribute.effect!
                                  : 'No Information',
                              style: TextStyle(
                                  fontFamily: 'Lora',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.white.withOpacity(0.7)),
                            ),
                          ],
                        ),
                      ),

                      /// #characteristics
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 26),
                        child: Wrap(
                          children: [
                            Text(
                              'Characteristics: ',
                              style: TextStyle(
                                  fontFamily: 'Lora',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.white.withOpacity(0.7)),
                            ),
                            Text(
                              snapshot.data!.attribute.characteristics != null
                                  ? snapshot.data!.attribute.characteristics!
                                  : 'No Information',
                              style: TextStyle(
                                  fontFamily: 'Lora',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.white.withOpacity(0.7)),
                            ),
                          ],
                        ),
                      ),

                      /// #cooking time
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 26),
                        child: Wrap(
                          children: [
                            Text(
                              'Cooking time: ',
                              style: TextStyle(
                                  fontFamily: 'Lora',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.white.withOpacity(0.7)),
                            ),
                            Text(
                              snapshot.data!.attribute.time != null
                                  ? snapshot.data!.attribute.time!
                                  : 'No Information',
                              style: TextStyle(
                                  fontFamily: 'Lora',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.white.withOpacity(0.7)),
                            ),
                          ],
                        ),
                      ),

                      /// #difficulty
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 26),
                        child: Wrap(
                          children: [
                            Text(
                              'Difficulty: ',
                              style: TextStyle(
                                  fontFamily: 'Lora',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.white.withOpacity(0.7)),
                            ),
                            Text(
                              snapshot.data!.attribute.difficulty != null
                                  ? snapshot.data!.attribute.difficulty!
                                  : 'No Information',
                              style: TextStyle(
                                  fontFamily: 'Lora',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.white.withOpacity(0.7)),
                            ),
                          ],
                        ),
                      ),

                      /// #ingredients
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 26),
                        child: Wrap(
                          children: [
                            Text(
                              'Ingredients: ',
                              style: TextStyle(
                                  fontFamily: 'Lora',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.white.withOpacity(0.7)),
                            ),
                            Text(
                              snapshot.data!.attribute.ingredients != null
                                  ? snapshot.data!.attribute.ingredients!
                                  : 'No Information',
                              style: TextStyle(
                                  fontFamily: 'Lora',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.white.withOpacity(0.7)),
                            ),
                          ],
                        ),
                      ),

                      /// #inventors
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 26),
                        child: Wrap(
                          children: [
                            Text(
                              'Inventors: ',
                              style: TextStyle(
                                  fontFamily: 'Lora',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.white.withOpacity(0.7)),
                            ),
                            Text(
                              snapshot.data!.attribute.inventors != null
                                  ? snapshot.data!.attribute.inventors!
                                  : 'No Information',
                              style: TextStyle(
                                  fontFamily: 'Lora',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.white.withOpacity(0.7)),
                            ),
                          ],
                        ),
                      ),

                      /// #manufacturers
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 26),
                        child: Wrap(
                          children: [
                            Text(
                              'Manufacturers: ',
                              style: TextStyle(
                                  fontFamily: 'Lora',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.white.withOpacity(0.7)),
                            ),
                            Text(
                              snapshot.data!.attribute.manufacturers != null
                                  ? snapshot.data!.attribute.manufacturers!
                                  : 'No Information',
                              style: TextStyle(
                                  fontFamily: 'Lora',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.white.withOpacity(0.7)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }
              }
            default:
              {}
          }

          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        },
      ),
    );
  }
}
