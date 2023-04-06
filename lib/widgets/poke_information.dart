import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_app/model/pokemon_model.dart';
import '../constants/constants.dart';

class PokeInformation extends StatelessWidget {
  final PokemonModel pokemonModel;
  const PokeInformation({super.key, required this.pokemonModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.w)),
          color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildInformationRow('Egg', pokemonModel.egg),
          _buildInformationRow('Name', pokemonModel.name),
          _buildInformationRow('Height', pokemonModel.height),
          _buildInformationRow('Weight', pokemonModel.weight),
          _buildInformationRow('Spawn Time', pokemonModel.spawnTime),
          _buildInformationRow('Spawn Time', pokemonModel.spawnTime),
          _buildInformationRow('Weakness', pokemonModel.weaknesses),
          _buildInformationRow('Multipliers', pokemonModel.multipliers),
        ],
      ),
    );
  }

  _buildInformationRow(String label, dynamic value) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: Constants.getPokeInfoLabelTextStyle()),
          if (value is List && value.isNotEmpty)
            Text(
              value.join(' , '),
              style: Constants.getPokeInfoTextStyle(),
            )
          else if (value == null)
            const Text('Not available')
          else
            Text(value)
        ],
      ),
    );
  }
}
