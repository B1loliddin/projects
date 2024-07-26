import 'package:flutter/material.dart';
import 'package:harry_potter_app/models/potion_model.dart';
import 'package:harry_potter_app/pages/potion_detail_page.dart';
import 'package:harry_potter_app/services/network_service.dart';
import 'package:lottie/lottie.dart';

class PotionPage extends StatefulWidget {
  const PotionPage({super.key});

  @override
  State<PotionPage> createState() => _PotionPageState();
}

class _PotionPageState extends State<PotionPage> {
  List<Potion> potions = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<List<Potion>> fetchData() async {
    final String? data = await Network.methodGet(api: Network.apiPotions);

    return Network.parsePotionList(data!);
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
                            builder: (_) => PotionDetailPage(
                              slug: snapshot.data![index].attribute.slug,
                            ),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Expanded(
                            flex: 5,
                            child: snapshot.data![index].attribute.image != null
                                ? Image.network(
                                    snapshot.data![index].attribute.image!,
                                  )
                                : Lottie.asset('assets/lotties/no_image.json'),
                          ),
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
