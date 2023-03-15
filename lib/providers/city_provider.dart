import 'dart:collection';
import 'package:flutter/cupertino.dart';
import '../data/data.dart' as data;
import '../models/city_model.dart';

class CityProvider extends ChangeNotifier {
  final List<City> _cities = data.cities;

  UnmodifiableListView<City> get cities => UnmodifiableListView(_cities);

  City getCityByName(String cityName) =>
      cities.firstWhere((city) => city.name == cityName);
}