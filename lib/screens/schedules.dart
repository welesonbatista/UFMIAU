import 'package:aplicativouniversitario/screens/shedules_classes.dart';
import 'package:aplicativouniversitario/screens/shedules_time.dart';
import 'package:aplicativouniversitario/utilities/constants.dart';
import 'package:flutter/material.dart';

class Schedules extends StatefulWidget {
  const Schedules({Key? key}) : super(key: key);

  @override
  State<Schedules> createState() => _SchedulesState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _SchedulesState extends State<Schedules> with TickerProviderStateMixin {
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
                  "Hórario",
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
                  'Horários',
                  style: titleTabBar,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Turmas',
                  style: titleTabBar,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const <Widget>[
            SingleChildScrollView(child: Time()),
            SingleChildScrollView(child: Classes()),
          ],
        ),
      ),
    );
  }
}
