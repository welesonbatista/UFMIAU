import 'package:aplicativouniversitario/auth/auth.dart';
import 'package:aplicativouniversitario/auth/user_data.dart';
import 'package:aplicativouniversitario/components/form_profile.dart';
import 'package:aplicativouniversitario/utilities/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _ProfileState extends State<Profile> with TickerProviderStateMixin {
  // ignore: unused_field
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    final TextEditingController _integralizationController =
        TextEditingController();
    final TextEditingController _studentNumberController =
        TextEditingController();
    final TextEditingController _academicPercentegeController =
        TextEditingController();
    final TextEditingController _priorityPercentegeController =
        TextEditingController();
    final TextEditingController _curseController = TextEditingController();

    CollectionReference users = FirebaseFirestore.instance.collection('users');

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
                    txt: 'Matricula',
                    keyboard: TextInputType.number,
                    controller: _studentNumberController,
                  ),
                  FormFieldProfile(
                    txt: 'Curso',
                    keyboard: TextInputType.text,
                    controller: _curseController,
                  ),
                  FormFieldProfile(
                    txt: 'Integralização',
                    keyboard: TextInputType.number,
                    controller: _integralizationController,
                  ),
                  FormFieldProfile(
                    txt: 'Índices Acadêmicos',
                    keyboard: TextInputType.number,
                    controller: _academicPercentegeController,
                  ),
                  FormFieldProfile(
                    txt: 'Índice de Prioridade',
                    keyboard: TextInputType.number,
                    controller: _priorityPercentegeController,
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
                      'matricula': _studentNumberController.text,
                      'integralizacao': _integralizationController.text,
                      'indice_academico': _academicPercentegeController.text,
                      'indice_prioridade': _priorityPercentegeController.text,
                      'curso': _curseController.text,
                      // ignore: avoid_print
                    }).then((value) => print('user added'));

                    CollectionReference userC =
                        FirebaseFirestore.instance.collection('users');
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

    UserData userFile = UserData();

    return SafeArea(
      child: Scaffold(
        backgroundColor: background,
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
                  "Perfil do discente",
                  style: subAppBar,
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: ClipRRect(
                      child: SizedBox(
                        width: 120,
                        height: 120,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(user!.photoURL()!),
                        ),
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(360),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        user.displayName!,
                        style: nameUser,
                      ),
                      Text('', style: textProfile),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Informações', style: titleSection),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      _showMaterialDialog();
                    },
                    icon: const Icon(Icons.mode_edit_outline),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .45,
                        height: MediaQuery.of(context).size.height * .15,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13.0),
                          ),
                          shadowColor: shadow,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text('Integralização', style: ktitle),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text('61%', style: nameUser),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .45,
                            height: MediaQuery.of(context).size.height * .15,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13.0),
                              ),
                              shadowColor: shadow,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: const [
                                    Text('Conprovante\n de matricula',
                                        style: ktitle),
                                    Icon(Icons.attach_file_outlined),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    height: MediaQuery.of(context).size.height * .3,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13.0),
                      ),
                      shadowColor: shadow,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Índices Acadêmicos',
                              style: ktitle,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Média Global', style: textProfile),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text('7,04', style: nameUser),
                          ),
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Índice de Prioridade',
                                  style: textProfile),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text('114,80', style: nameUser),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .95,
                height: MediaQuery.of(context).size.height * .2,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13.0),
                  ),
                  shadowColor: shadow,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
                        child: Text(
                          'Dados Institucionais',
                          style: ktitle,
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 16, 13, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Matricula', style: textProfile),
                                Text('Status', style: textProfile),
                                Text('Email', style: textProfile),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('201908162'),
                                const Text('Ativo'),
                                Text(user.email!),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    context.read<AuthentificationService>().logOut();
                  },
                  child: const Text("Sair da conta", style: textProfile),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
