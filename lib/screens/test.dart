import 'package:aplicativouniversitario/auth/auth.dart';
import 'package:aplicativouniversitario/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _TestState extends State<Test> with TickerProviderStateMixin {
  // ignore: unused_field
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
                        child: Image.asset(
                          'lib/assets/image/profile.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(360),
                      ),
                    ),
                  ),
                  Column(
                    children: const [
                      Text(
                        'Weleson Batista',
                        style: nameUser,
                      ),
                      Text('Ciência da Computação', style: textProfile),
                    ],
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Informações', style: titleSection),
                ),
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
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Índices Acadêmicos',
                                style: ktitle,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
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
                            padding: EdgeInsets.all(8.0),
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
                height: MediaQuery.of(context).size.height * .22,
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
                        padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                        child: Text(
                          'Dados Institucionais',
                          style: ktitle,
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                  child: Text('Matricula', style: textProfile),
                                ),
                                Text('201908162'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 40, 0),
                                  child: Text('Status', style: textProfile),
                                ),
                                Text('Ativo'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 16, 45, 0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 40, 0),
                                  child: Text('Email', style: textProfile),
                                ),
                                Text('weleson@discente.ufcat.edu.br'),
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
