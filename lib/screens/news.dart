import 'package:aplicativouniversitario/model/NewsList.dart';
import 'package:aplicativouniversitario/utilities/constants.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: newsList.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .95,
                    height: MediaQuery.of(context).size.height * .15,
                    child: Card(
                      shadowColor: shadow,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset(
                        newsList[index].banner,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            newsList[index].name,
                            style: description,
                          ),
                          Text(
                            newsList[index].data,
                            style: description,
                          ),
                        ],
                      ),
                      Expanded(
                        child: IconButton(
                          alignment: Alignment.bottomRight,
                          icon: const Icon(
                            Icons.cloud_download_rounded,
                            color: iconColor,
                          ),
                          onPressed: () async {
                            launch(newsList[index].link);
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
