import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poke_app/constants/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:poke_app/constants/ui_helper.dart';
import 'package:poke_app/model/pokemon_model.dart';

class PokeImageAndBall extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeImageAndBall({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            Constants.pokeballImageUrl,
            width: UIHelper.calculatePokeImgAndBallSize(),
            height: UIHelper.calculatePokeImgAndBallSize()
            ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: CachedNetworkImage(
            imageUrl: pokemon.img ??'',
            width: UIHelper.calculatePokeImgAndBallSize(),
            height: UIHelper.calculatePokeImgAndBallSize(),
            placeholder: ((context, url) =>const CircularProgressIndicator(color: Colors.red)),
            ),
            
        )
      ],
    );
  }
}