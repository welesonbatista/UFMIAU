import 'package:aplicativouniversitario/utilities/constants.dart';
import 'package:flutter/material.dart';

class Time extends StatefulWidget {
  const Time({Key? key}) : super(key: key);

  @override
  State<Time> createState() => _TimeState();
}

class _TimeState extends State<Time> {
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
                  textColor: orange,
                  children: [
                    ListTile(
                      title: Text(
                        "Sistemas Operacionais",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "Luana Lobato",
                        style: text,
                      ),
                      trailing: Text(
                        "07:10 \n 08:50",
                        style: ktitle,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Calculo 1",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "Ana Clara",
                        style: text,
                      ),
                      trailing: Text(
                        "07:10 \n 08:50",
                        style: ktitle,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Redes de Computadores",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "Weleson Batista",
                        style: text,
                      ),
                      trailing: Text(
                        "07:10 \n 08:50",
                        style: ktitle,
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
                    "Terça-feira",
                    style: titleCard,
                  ),
                  textColor: orange,
                  children: [
                    ListTile(
                      title: Text(
                        "Sistemas Operacionais",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "Luana Lobato",
                        style: text,
                      ),
                      trailing: Text(
                        "07:10 \n 08:50",
                        style: ktitle,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Calculo 1",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "Ana Clara",
                        style: text,
                      ),
                      trailing: Text(
                        "07:10 \n 08:50",
                        style: ktitle,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Redes de Computadores",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "Weleson Batista",
                        style: text,
                      ),
                      trailing: Text(
                        "07:10 \n 08:50",
                        style: ktitle,
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
                  textColor: orange,
                  children: [
                    ListTile(
                      title: Text(
                        "Sistemas Operacionais",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "Luana Lobato",
                        style: text,
                      ),
                      trailing: Text(
                        "07:10 \n 08:50",
                        style: ktitle,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Calculo 1",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "Ana Clara",
                        style: text,
                      ),
                      trailing: Text(
                        "07:10 \n 08:50",
                        style: ktitle,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Redes de Computadores",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "Weleson Batista",
                        style: text,
                      ),
                      trailing: Text(
                        "07:10 \n 08:50",
                        style: ktitle,
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
                    "Quinta-feira",
                    style: titleCard,
                  ),
                  textColor: orange,
                  children: [
                    ListTile(
                      title: Text(
                        "Sistemas Operacionais",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "Luana Lobato",
                        style: text,
                      ),
                      trailing: Text(
                        "07:10 \n 08:50",
                        style: ktitle,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Calculo 1",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "Ana Clara",
                        style: text,
                      ),
                      trailing: Text(
                        "07:10 \n 08:50",
                        style: ktitle,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Redes de Computadores",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "Weleson Batista",
                        style: text,
                      ),
                      trailing: Text(
                        "07:10 \n 08:50",
                        style: ktitle,
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
                  textColor: orange,
                  children: [
                    ListTile(
                      title: Text(
                        "Sistemas Operacionais",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "Luana Lobato",
                        style: text,
                      ),
                      trailing: Text(
                        "07:10 \n 08:50",
                        style: ktitle,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Calculo 1",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "Ana Clara",
                        style: text,
                      ),
                      trailing: Text(
                        "07:10 \n 08:50",
                        style: ktitle,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Redes de Computadores",
                        style: ktitle,
                      ),
                      subtitle: Text(
                        "Weleson Batista",
                        style: text,
                      ),
                      trailing: Text(
                        "07:10 \n 08:50",
                        style: ktitle,
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
