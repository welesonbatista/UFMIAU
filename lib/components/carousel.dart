import 'package:aplicativouniversitario/utilities/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<Widget> imgList = [
  const Card(
    color: Colors.green,
    child: Text("well conseguiu"),
  ),
  const Card(
    color: Colors.blue,
    child: Text("well conseguiu"),
  ),
  const Card(
    color: Colors.red,
    child: Text("well conseguiu"),
  ),
  const Card(
    color: Colors.green,
    child: Text("well conseguiu"),
  ),
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          margin: const EdgeInsets.all(5.0),
          child: Stack(
            children: <Widget>[
              item,
            ],
          ),
        ))
    .toList();

class CarouselWithIndicatorDemo extends StatefulWidget {
  const CarouselWithIndicatorDemo({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .9,
      height: MediaQuery.of(context).size.height * .3,
      child: Card(
        shadowColor: shadow,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            CarouselSlider(
              items: imageSliders,
              carouselController: _controller,
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 10.0,
                    height: 10.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // ignore: unrelated_type_equality_checks
                        color: (Theme.of(context).brightness ==
                                    Brightness.values
                                ? orange
                                : Colors.black)
                            .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
