import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:poke_app/model/pokemon_model.dart';

class PokeApi{
  static const String _url = 'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';

  static Future<List<PokemonModel>> getPokemonData()async{
    List<PokemonModel> list = [];
     var result = await Dio().get(_url);
     List pokeList = jsonDecode(result.data)['pokemon'];
     // ignore: unnecessary_type_check
     if(pokeList is List){
     list = pokeList.map((e) => PokemonModel.fromJson(e)).toList();
      return list;
     }
     else{
      return [];
     }
  }
}
/*
 static tanımladık cunku class'a dışarıdan erişirken nesne tanımlamadan erişebilelim diye. 'PokeApi.getPokemonData;' gibi
 internette getireceğim verileri _url'ye esitledim

 getPokemonData metotunu olusturdum ve verilerin ne zaman geleceğini bilmediğim için Future tanımladım. future olduğu için async-await dedim
 Future<List<PokemonModel>>  ---> gelecekte bir zamanda içerisinde pokemonmodelin olduğu bir liste geriye döndür.

 normalde Dio'da jsondecode yapmaya gerek yok Dşo otomatık kendi yapıyor ancak benm url'imin sonunda .json dediği için json.decode yapmam gerekiyor.

 */
