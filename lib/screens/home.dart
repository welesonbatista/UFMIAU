import 'package:aplicativouniversitario/components/card.dart';
import 'package:aplicativouniversitario/components/carousel.dart';
import 'package:aplicativouniversitario/utilities/constants.dart';
import 'package:flutter/material.dart';

class HomeScreem extends StatefulWidget {
  const HomeScreem({Key? key}) : super(key: key);

  @override
  State<HomeScreem> createState() => _HomeScreemState();
}

class _HomeScreemState extends State<HomeScreem> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
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
                  "UFMIAU",
                  style: subAppBar,
                ),
              )
            ],
          ),
        ),
        backgroundColor: background,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Importantes',
                      style: titleSection,
                    ),
                  ),
                ],
              ),
              const CarouselWithIndicatorDemo(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Sites Importantes da UFCAT',
                      style: titleSection,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardHome('Site da PRPE', Icons.language),
                  CardHome('Biblioteca', Icons.language),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Contatos da UFCAT',
                      style: titleSection,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardHome('Facebook', Icons.facebook_rounded),
                  CardHome('Instagram', Icons.facebook_rounded),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardHome('YouTube', Icons.language),
                  CardHome('Site Primeiro', Icons.language),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
