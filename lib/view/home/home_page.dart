import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<SearchPrediction> destinationPredictionList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(mainAxisAlignment: MainAxisAlignment.start,children: <Widget>[
      Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Where are you going to?'),
              onChanged: (value) async {
                destinationPredictionList =
                await MapService.searchPlace(value);
              },
            ),
          ),
          Icon(Icons.search, color: Palette.darkGreen)
        ],
      ),
        ],),),
    );
  }
}
