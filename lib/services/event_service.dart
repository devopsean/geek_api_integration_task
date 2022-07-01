import 'package:geek_api_integration_task/data/models/type_ahead.dart';
import 'package:geek_api_integration_task/helpers/request_helper.dart';

class EventService {
  static Future<List<SearchTypeAhead>> searchPlace(String placeName) async {
    List<SearchTypeAhead> destinationPredictionList = [];
    String apiKey = 'AIzaSyCmj6ShYkrv-zhBUhARkN00LT2ObJSIjF8';

    if (placeName.length > 1) {
      try {
        String url =
            'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$placeName&key=$apiKey&sessiontoken=123254251';
        var response = await RequestHelper.getRequest(url);
        if (response == 'failed') {
          print('RESPONSE FAILED ON SEARCH');
        }
        if (response['status'] == 'OK') {
          var predictionJson = response['predictions'];
          var thisList = (predictionJson as List)
              .map((e) => SearchTypeAhead.fromJson(e))
              .toList();
          destinationPredictionList = thisList;
        }
      } catch (e) {
        print('check: search error is $e');
        throw e;
      }
    }
    return destinationPredictionList;
  }
}
