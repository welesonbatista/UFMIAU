import 'package:aplicativouniversitario/screens/events.dart';
import 'package:aplicativouniversitario/screens/news.dart';
import 'package:aplicativouniversitario/screens/publish.dart';
import 'package:aplicativouniversitario/utilities/constants.dart';
import 'package:flutter/material.dart';

class Prpe extends StatefulWidget {
  const Prpe({Key? key}) : super(key: key);

  @override
  State<Prpe> createState() => _PrpeState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _PrpeState extends State<Prpe> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
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
                  "PRPE",
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
                  'Editais',
                  style: titleTabBar,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Eventos',
                  style: titleTabBar,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Notícias',
                  style: titleTabBar,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const <Widget>[
            Publish(),
            Events(),
            News(),
          ],
        ),
      ),
    );
  }
}
