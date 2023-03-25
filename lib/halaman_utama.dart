import 'package:flutter/material.dart';
import 'package:quiz_123200172/halaman_detail.dart';
import 'package:quiz_123200172/pokemon_data.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("PokeDoc"),
            backgroundColor: Colors.deepOrange,
          ),
          body: GridView.builder(
            itemCount: listPokemon.length,
            gridDelegate : const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 3,
            ),
            itemBuilder: (BuildContext context, index){
              final PokemonData poke = listPokemon[index];
              return GestureDetector(
                onTap: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) => HalamanDetail(poke : poke,)
                  )
                );
              },
                child: Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.network(poke.image),
                      ),
                      Text(poke.name),
                    ],
                  ),
                ),
              );
            },
          ),
    ));
  }
}
