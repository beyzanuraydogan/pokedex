import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_app/constants/constants.dart';
import 'package:poke_app/constants/ui_helper.dart';
import 'package:poke_app/model/pokemon_model.dart';
import 'package:poke_app/pages/details_page.dart';
import 'package:poke_app/widgets/poke_img_and_ball.dart';

class PokeListItem extends StatelessWidget {
  PokemonModel pokemon;
  PokeListItem({required this.pokemon, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: ((context) => DetailsePage(pokemon: pokemon))));
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.w)),
        elevation: 4,
        shadowColor: Colors.white,
        color: UIHelper.getColorFromType(pokemon.type![0]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              pokemon.name!,
              style: Constants.getPokemonNameTextStyle()),
            Chip(
              label: Text(pokemon.type![0],style: Constants.getTypeChipTextStyle(),),),
              Expanded(child: PokeImageAndBall(pokemon: pokemon))
          ],
        ),
      ),
    );
  }
}