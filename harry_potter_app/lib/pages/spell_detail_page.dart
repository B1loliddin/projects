import 'package:flutter/material.dart';
import 'package:harry_potter_app/models/spell_model.dart';
import 'package:harry_potter_app/services/network_service.dart';

class SpellDetailPage extends StatefulWidget {
  final String slug;

  const SpellDetailPage({
    super.key,
    required this.slug,
  });

  @override
  State<SpellDetailPage> createState() => _SpellDetailPageState();
}

class _SpellDetailPageState extends State<SpellDetailPage> {
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<Spell> fetchData() async {
    final String? data =
        await Network.methodGet(api: Network.apiSpells, slug: widget.slug);

    return Network.parseSpell(data!);
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
                              'Incantation: ',
                              style: TextStyle(
                                  fontFamily: 'Lora',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.white.withOpacity(0.7)),
                            ),
                            Text(
                              snapshot.data!.attribute.incantation != null
                                  ? snapshot.data!.attribute.incantation!
                                  : 'No Information',
                              style: TextStyle(
                                fontFamily: 'Lora',
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.white.withOpacity(0.7),
                              ),
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
