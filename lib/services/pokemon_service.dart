import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:ososs_test/controller/loader_controller.dart';
import 'package:ososs_test/models/pokemon_model.dart';

import '../api/api.dart';

class PokemonService {
  static PokemonService? _instance;

  var dio = Dio();

  factory PokemonService() => _instance ??= PokemonService._();

  PokemonService._();

  LoaderController loaderController = Get.put(LoaderController());

  Future<PokemonModel> getAllPokemons() async {
    loaderController.loading(true);
    var response = await Api().dio.get('pokemon');

    loaderController.loading(false);
    print('pokemon response is   ${response.data}');
    return PokemonModel.fromJson(response.data);
  }

  Future<dynamic> getPokemonsDetiles(String url) async {
    loaderController.loading(true);
    var response = await dio.get('$url');

    print('888888888888 url is is   $url');

    loaderController.loading(false);

    return response.data;
  }
}
