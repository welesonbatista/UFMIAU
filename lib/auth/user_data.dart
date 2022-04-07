// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserData {
  late String curso;
  late String integralizacao;
  late String academico;
  late String prioridade;
  late String matricula;

  Future userFire() async {
    CollectionReference userC = FirebaseFirestore.instance.collection('users');
    final userF = FirebaseAuth.instance.currentUser;
    DocumentSnapshot userData = await userC.doc(userF?.email).get();
    major = userData['curso'];
    integralization = userData['integralizacao'];
    academic = userData['indice_academico'];
    priority = userData['indice_prioridade'];
    studentNumber = userData['matricula'];
    print('cuuuuuuuuu: ' + major);
  }

  String get integralization => integralizacao;

  String get academic => academico;

  String get major {
    userFire();
    return curso;
  }

  set major(String value) {
    curso = value;
  }

  String get priority => prioridade;

  set priority(String value) {
    prioridade = value;
  }

  set academic(String value) {
    academico = value;
  }

  set integralization(String value) {
    integralizacao = value;
  }

  String get studentNumber => matricula;

  set studentNumber(String value) {
    matricula = value;
  }
}
