import 'package:flutter/material.dart';
import 'tela_agendamento_aulas.dart';
import 'tela_gerenciar_aula_a.dart';
import 'tela_cadastro_aulas.dart';
import 'tela_cadastro.dart';
import 'tela_consulta_aulas.dart';
import 'tela_login.dart';
import 'tela_pagamento.dart';
import 'tela_perfil_prof.dart';
import 'tela_perfil_aluno.dart';
import 'tela_sobre.dart';
import 'tela_cadastro_paga.dart';
import 'tela_cadastro_recebe.dart';
import 'tela_gerenciar_aula_p.dart';
import 'tela_atualizar_cadastro_a.dart';
import 'tela_atualizar_cadastro_p.dart';
import 'tela_gerenciar_cartao.dart';
import 'tela_gerenciar_conta.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  const String titulo = 'Aulas Particulares';
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Aula Particular',
        initialRoute: 'login',
        routes: {
          'login': (context) => Login(titulo),
          'cadastro': (context) => Cadastro(),
          'prof': (context) => Professor(),
          'cadaula': (context) => CadastroAula(),
          'aluno': (context) => Aluno(),
          'consultaaula': (context) => ConsultaAula(),
          'agendamento': (context) => Agendamento(),
          'geraulap': (context) => GerAulaP(),
          'cadastropag': (context) => CadastroPag(),
          'cadrecebe': (context) => CadRecebe(),
          'geraulaa': (context) => GerAulaA(),
          'pag': (context) => Pagamento(),
          'atualcada': (context) => AtualCadA(),
          'atualcadp': (context) => AtualCadP(),
          'gercart': (context) => telaCartao(),
          'gercont': (context) => telaConta(),
          'sobre': (context) => Sobre(),
        },
        theme: ThemeData(
          primaryColor: Colors.blue[500],
          backgroundColor: Colors.blue[100],
          focusColor: Colors.blue[500],
          textTheme: TextTheme(
            headline1: TextStyle(fontSize: 18, color: Colors.blue[500]),
            headline2: TextStyle(fontSize: 14, color: Colors.blue[500]),
            headline3: TextStyle(fontSize: 28, color: Colors.blue[500]),
            headline4: TextStyle(fontSize: 28, color: Colors.white),
            headline5: TextStyle(fontSize: 12, color: Colors.blue[500]),
            headline6: TextStyle(
                fontSize: 18,
                color: Colors.blue[500],
                fontWeight: FontWeight.bold),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
            primary: Colors.blue[500],
            textStyle: TextStyle(fontSize: 24),
          )),
        )),
  );
}
