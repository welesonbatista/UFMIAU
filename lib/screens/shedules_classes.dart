import 'package:aplicativouniversitario/utilities/constants.dart';
import 'package:flutter/material.dart';

class Classes extends StatefulWidget {
  const Classes({Key? key}) : super(key: key);

  @override
  State<Classes> createState() => _ClassesState();
}

class _ClassesState extends State<Classes> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(2.0, 20.0, 2.0, 2.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .95,
              child: Card(
                color: Colors.white,
                shadowColor: shadow,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: const ExpansionTile(
                  iconColor: orange,
                  title: Text(
                    "Sistemas Operacionais",
                    style: titleCard,
                  ),
                  textColor: orange,
                  children: [
                    ListTile(
                      title: Text(
                        "Seminario Um",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "17/10",
                        style: text,
                      ),
                      trailing: Icon(Icons.cloud_download_rounded),
                    ),
                    ListTile(
                      title: Text(
                        "Seminario Dois",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "17/10",
                        style: text,
                      ),
                      trailing: Icon(Icons.cloud_download_rounded),
                    ),
                    ListTile(
                      title: Text(
                        "Lista de Atividades Um",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "17/10",
                        style: text,
                      ),
                      trailing: Icon(Icons.cloud_download_rounded),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .95,
              child: Card(
                color: Colors.white,
                shadowColor: shadow,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: const ExpansionTile(
                  iconColor: orange,
                  title: Text(
                    "Programação",
                    style: titleCard,
                  ),
                  textColor: orange,
                  children: [
                    ListTile(
                      title: Text(
                        "Seminario Um",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "17/10",
                        style: text,
                      ),
                      trailing: Icon(Icons.cloud_download_rounded),
                    ),
                    ListTile(
                      title: Text(
                        "Seminario Dois",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "17/10",
                        style: text,
                      ),
                      trailing: Icon(Icons.cloud_download_rounded),
                    ),
                    ListTile(
                      title: Text(
                        "Lista de Atividades Um",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "17/10",
                        style: text,
                      ),
                      trailing: Icon(Icons.cloud_download_rounded),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .95,
              child: Card(
                color: Colors.white,
                shadowColor: shadow,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: const ExpansionTile(
                  iconColor: orange,
                  title: Text(
                    "Redes de Computadores",
                    style: titleCard,
                  ),
                  textColor: orange,
                  children: [
                    ListTile(
                      title: Text(
                        "Seminario Um",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "17/10",
                        style: text,
                      ),
                      trailing: Icon(Icons.cloud_download_rounded),
                    ),
                    ListTile(
                      title: Text(
                        "Seminario Dois",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "17/10",
                        style: text,
                      ),
                      trailing: Icon(Icons.cloud_download_rounded),
                    ),
                    ListTile(
                      title: Text(
                        "Lista de Atividades Um",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "17/10",
                        style: text,
                      ),
                      trailing: Icon(Icons.cloud_download_rounded),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .95,
              child: Card(
                color: Colors.white,
                shadowColor: shadow,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: const ExpansionTile(
                  iconColor: orange,
                  title: Text(
                    "Calculo 1",
                    style: titleCard,
                  ),
                  textColor: orange,
                  children: [
                    ListTile(
                      title: Text(
                        "Seminario Um",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "17/10",
                        style: text,
                      ),
                      trailing: Icon(Icons.cloud_download_rounded),
                    ),
                    ListTile(
                      title: Text(
                        "Seminario Dois",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "17/10",
                        style: text,
                      ),
                      trailing: Icon(Icons.cloud_download_rounded),
                    ),
                    ListTile(
                      title: Text(
                        "Lista de Atividades Um",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "17/10",
                        style: text,
                      ),
                      trailing: Icon(Icons.cloud_download_rounded),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .95,
              child: Card(
                color: Colors.white,
                shadowColor: shadow,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: const ExpansionTile(
                  iconColor: orange,
                  title: Text(
                    "Fisica Para Computação",
                    style: titleCard,
                  ),
                  textColor: orange,
                  children: [
                    ListTile(
                      title: Text(
                        "Seminario Um",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "17/10",
                        style: text,
                      ),
                      trailing: Icon(
                        Icons.cloud_download_rounded,
                        color: iconColor,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Seminario Dois",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "17/10",
                        style: text,
                      ),
                      trailing: Icon(
                        Icons.cloud_download_rounded,
                        color: iconColor,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Lista de Atividades Um",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "17/10",
                        style: text,
                      ),
                      trailing: Icon(
                        Icons.cloud_download_rounded,
                        color: iconColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
