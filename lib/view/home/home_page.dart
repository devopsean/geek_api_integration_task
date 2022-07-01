import 'package:flutter/material.dart';
import 'package:geek_api_integration_task/data/models/type_ahead.dart';
import 'package:geek_api_integration_task/services/event_service.dart';
import 'package:geek_api_integration_task/util/color_palette.dart';
import 'package:geek_api_integration_task/util/styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<SearchTypeAhead> eventPredictionList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              color: Palette.darkBlue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: kSearchFieldDecoration,
                      onChanged: (value) async {
                        eventPredictionList =
                            await EventService.searchPlace(value);
                      },
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      width: 100,
                      child: Text(
                        'Cancel',
                        style: bodyText_4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
