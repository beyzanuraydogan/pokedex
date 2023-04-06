import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_app/constants/constants.dart';
import 'package:poke_app/model/pokemon_model.dart';
class PokeTypeName extends StatelessWidget {

  final PokemonModel pokemon;
  const PokeTypeName({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.02.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(pokemon.name ?? '', style: Constants.getPokemonNameTextStyle()),
              SizedBox(height: 10.h),
              Text('#${pokemon.num}', style: Constants.getPokemonNameTextStyle())
            ],
          ),
          Chip(
              label: Text(
                  pokemon.type?.join(' , ') ?? '',
                  style: Constants.getTypeChipTextStyle()))
        ],
      ),
    );
  }
}
