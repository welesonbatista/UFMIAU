import 'package:aplicativouniversitario/screens/dinner_restaurant.dart';
import 'package:aplicativouniversitario/screens/lunch_restaurant.dart';
import 'package:aplicativouniversitario/utilities/constants.dart';
import 'package:flutter/material.dart';

class Restaurant extends StatefulWidget {
  const Restaurant({Key? key}) : super(key: key);

  @override
  State<Restaurant> createState() => _RestaurantState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _RestaurantState extends State<Restaurant> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: background,
        appBar: AppBar(
          backgroundColor: background,
          title: Column(
            children: [
              Center(
                child: Image.asset(
                  'lib/assets/image/logo.png',
                  scale: 3,
                ),
              ),
              const Center(
                child: Text(
                  "RU",
                  style: subAppBar,
                ),
              )
            ],
          ),
          bottom: TabBar(
            indicatorColor: orange,
            controller: _tabController,
            tabs: const <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Almoço',
                  style: titleTabBar,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Jantar',
                  style: titleTabBar,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const <Widget>[
            SingleChildScrollView(child: Lunch()),
            SingleChildScrollView(child: Dinner()),
          ],
        ),
      ),
    );
  }
}
