import 'package:aplicativouniversitario/utilities/constants.dart';
import 'package:flutter/material.dart';

class Dinner extends StatefulWidget {
  const Dinner({Key? key}) : super(key: key);

  @override
  State<Dinner> createState() => _DinnerState();
}

class _DinnerState extends State<Dinner> {
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
                    "Segunda-feira",
                    style: titleCard,
                  ),
                  subtitle: Text(
                    "10:30-14:00",
                    style: ktitle,
                  ),
                  textColor: orange,
                  children: [
                    ListTile(
                      title: Text(
                        "Frango Xadrez",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "Proteina",
                        style: text,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Alface, tomate",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "Salada",
                        style: text,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Arroz integral",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "Carboidrato",
                        style: text,
                      ),
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
                    "Ter??a-feira",
                    style: titleCard,
                  ),
                  subtitle: Text(
                    "10:30-14:00",
                    style: ktitle,
                  ),
                  textColor: orange,
                  children: [
                    ListTile(
                      title: Text(
                        "Frango Xadrez",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "Proteina",
                        style: text,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Alface, tomate",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "Salada",
                        style: text,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Arroz integral",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "Carboidrato",
                        style: text,
                      ),
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
                    "Quarta-feira",
                    style: titleCard,
                  ),
                  subtitle: Text(
                    "10:30-14:00",
                    style: ktitle,
                  ),
                  textColor: orange,
                  children: [
                    ListTile(
                      title: Text(
                        "Frango Xadrez",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "Proteina",
                        style: text,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Alface, tomate",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "Salada",
                        style: text,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Arroz integral",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "Carboidrato",
                        style: text,
                      ),
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
                    "Quinta-Feira",
                    style: titleCard,
                  ),
                  subtitle: Text(
                    "10:30-14:00",
                    style: ktitle,
                  ),
                  textColor: orange,
                  children: [
                    ListTile(
                      title: Text(
                        "Frango Xadrez",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "Proteina",
                        style: text,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Alface, tomate",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "Salada",
                        style: text,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Arroz integral",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "Carboidrato",
                        style: text,
                      ),
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
                    "Sexta-feira",
                    style: titleCard,
                  ),
                  subtitle: Text(
                    "10:30-14:00",
                    style: ktitle,
                  ),
                  textColor: orange,
                  children: [
                    ListTile(
                      title: Text(
                        "Frango Xadrez",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "Proteina",
                        style: text,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Alface, tomate",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "Salada",
                        style: text,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Arroz integral",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "Carboidrato",
                        style: text,
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
