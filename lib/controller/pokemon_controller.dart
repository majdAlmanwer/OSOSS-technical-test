import 'package:get/get.dart';
import 'package:ososs_test/controller/loader_controller.dart';
import 'package:ososs_test/services/pokemon_service.dart';

import '../models/pokemon_model.dart';

class PokemonController extends GetxController {
  LoaderController loaderController = Get.put(LoaderController());
  List<Results> pokemonList = [];
  RxList<String> pokemonImages = RxList<String>();
  Future<dynamic> fetchPokemonList() async {
    loaderController.loading(true);
    var response = await PokemonService().getAllPokemons();
    print('************* ${response.results!.length}');
    pokemonList = response.results!;

    update();
    loaderController.loading(false);
    return pokemonList;
  }

  Future<dynamic> getPokemonImage(String url) async {
    loaderController.loading(true);
    var response = await PokemonService().getPokemonsDetiles(url);

    String image = response['sprites']['other']['home']['front_default'];
    print('*&*&*&*&*#****##**#* ${image}');
    pokemonImages.add(image);
    update();
    loaderController.loading(false);
  }
}
