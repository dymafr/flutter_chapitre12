import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testflutter/providers/city_provider.dart';
import '../../models/city_model.dart';
import '../../widgets/dyma_drawer.dart';
import 'widgets/city_card.dart';

class HomeView extends StatefulWidget {
  static const String routeName = '/';

  const HomeView({super.key});

  @override
  State<HomeView> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    List<City> cities = Provider.of<CityProvider>(context).cities;
    return Scaffold(
      appBar: AppBar(
        title: const Text('dymatrip'),
      ),
      drawer: const DymaDrawer(),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: cities.map(
                (city) {
              return CityCard(
                city: city,
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}