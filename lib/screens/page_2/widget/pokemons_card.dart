import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ososs_test/controller/loader_controller.dart';
import 'package:ososs_test/controller/pokemon_controller.dart';

import '../../../utils/app_config.dart';

class PokemonsCard extends StatefulWidget {
  PokemonsCard({super.key});

  @override
  State<PokemonsCard> createState() => _PokemonsCardState();
}

class _PokemonsCardState extends State<PokemonsCard> {
  final pokemonContoller = Get.put(PokemonController());
  LoaderController loaderController = Get.put(LoaderController());

  @override
  void initState() {
    super.initState();
    fetchPokemons();
  }

  Future fetchPokemons() async {
    await pokemonContoller.fetchPokemonList();

    for (final pokemon in pokemonContoller.pokemonList) {
      await pokemonContoller.getPokemonImage(pokemon.url!);
    }
    loaderController.loading(false);
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PokemonController>(
      builder: (controller) => loaderController.loading.value
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: controller.pokemonList.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        blurStyle: BlurStyle.normal,
                        color: Colors.black26,
                        offset: Offset(5.0, 5.0), //(x,y)
                        blurRadius: 5.0,
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        height: getPercentScreenHeight(16),
                        width: getPercentScreenWidth(30),
                        child: FadeInImage.assetNetwork(
                          placeholder: 'assets/images/Group.png',
                          image: controller.pokemonImages[index],
                          height: getPercentScreenHeight(16),
                          width: getPercentScreenWidth(30),
                        ),
                      ),
                      SizedBox(
                        width: getPercentScreenWidth(5),
                      ),
                      Text(
                        "${controller.pokemonList[index].name}",
                        maxLines: 1,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ).paddingOnly(right: getPercentScreenWidth(15)),
                    ],
                  ),
                );
              }),
    );
  }
}
