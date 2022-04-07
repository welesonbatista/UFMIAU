import 'package:aplicativouniversitario/auth/user_data.dart';
import 'package:aplicativouniversitario/components/form_profile.dart';
import 'package:aplicativouniversitario/utilities/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
          FloatingActionButton(
            backgroundColor: orange,
            onPressed: () {
              _showMaterialDialog();
            },
            child: const Icon(
              Icons.add,
            ),
          )
        ],
      ),
    );
  }

  final TextEditingController _classController = TextEditingController();

  CollectionReference users = FirebaseFirestore.instance.collection('class');
  final user = FirebaseAuth.instance.currentUser;
  _dismissDialog() {
    Navigator.pop(context);
  }

  void _showMaterialDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Editar Perfil'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FormFieldProfile(
                  txt: 'Matéria',
                  keyboard: TextInputType.number,
                  controller: _classController,
                ),
              ],
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  _dismissDialog();
                },
                child: const Text(
                  'Fechar',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
              TextButton(
                onPressed: () async {
                  //add dados no firebase
                  await users.doc(user?.email).set({
                    'materia': _classController.text,
                    // ignore: avoid_print
                  }).then((value) => print('class added'));

                  CollectionReference userC =
                      FirebaseFirestore.instance.collection('class');
                  final userF = FirebaseAuth.instance.currentUser;

                  DocumentSnapshot userData =
                      await userC.doc(userF?.email).get();
                  UserData userFile = UserData();
                  userFile.major = userData['curso'];
                  userFile.integralization = userData['integralizacao'];
                  userFile.academic = userData['indice_academico'];
                  userFile.priority = userData['indice_prioridade'];
                  userFile.studentNumber = userData['matricula'];
                  print('cuuuuuuuuu: ' + userFile.major);

                  _dismissDialog();
                },
                child: const Text('Salvar'),
              )
            ],
          );
        });
  }
}
