import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_app/constants/constants.dart';
import 'package:poke_app/constants/ui_helper.dart';
import 'package:poke_app/model/pokemon_model.dart';
import 'package:poke_app/widgets/poke_information.dart';
import 'package:poke_app/widgets/poke_type_name.dart';

class DetailsePage extends StatelessWidget {
  final PokemonModel pokemon;
  const DetailsePage({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIHelper.getColorFromType(pokemon.type![0]),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
              iconSize: 30.r,
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back_ios)),
          PokeTypeName(pokemon: pokemon),
          SizedBox(height: 20.h),
          Center(
            child: Stack(
              children: [
                Positioned(
                  child: Image.asset(Constants.pokeballImageUrl)),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: 
                  PokeInformation(pokemonModel: pokemon)),
                Align(
                  alignment: Alignment.topCenter,
                  child: CachedNetworkImage(
                    imageUrl: pokemon.img ?? '',
                    height: 0.25.sh,
                    ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}

// safeArea: appbar olmadan tum ekrana yayılma durumu
// 24.r deki r: width veya height'ten hangisi büyükse ona göre işlem yapar