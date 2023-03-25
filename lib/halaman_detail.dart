import 'package:flutter/material.dart';
import 'package:quiz_123200172/pokemon_data.dart';

class HalamanDetail extends StatefulWidget {
  final PokemonData poke;
  const HalamanDetail({Key? key, required this.poke}) : super(key: key);

  @override
  State<HalamanDetail> createState() => _HalamanDetailState();
}

class _HalamanDetailState extends State<HalamanDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Pokemon"),
        backgroundColor: Colors.deepOrange,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Berhasil menambahkan ke Favorite"),));
            },
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Image.network(widget.poke.image),
          ),
          Container(
            child: Text(widget.poke.name),
          ),
          Column(
              children: [
                Text("Type"),
                Text(widget.poke.type.toString()),
                Text("Weakness"),
                Text(widget.poke.weakness.toString()),
                Text("Previous Evolution"),
                Text(widget.poke.prevEvolution.toString()),
                Text("Next Evolution"),
                Text(widget.poke.nextEvolution.toString()),
              ],
            ),
        ],
      ),
    );
  }
}
