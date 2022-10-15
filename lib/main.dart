import 'package:flutter/material.dart';
import 'package:projeto_extensao/widgets/lesson_page.dart';
import 'package:projeto_extensao/widgets/fill_in_the_blanks_page_state.dart';
import 'package:projeto_extensao/widgets/heading1.dart';
import 'package:projeto_extensao/widgets/padded_image.dart';
import 'package:projeto_extensao/widgets/textblock.dart';
import 'package:projeto_extensao/widgets/validatable_field.dart';

void main() {
  runApp(const MyApp());
}

const tableContents = {
  "Introdução: o que é uma ferida?": "/introducao",
  "Pós-teste: introdução": "/pos-teste-introducao",
  "Cicatrização primária e secundária": "/cicatrizacao-primaria-secundaria"
};

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Projeto de extensão - Demo',
        theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Lexend"),
        initialRoute: '/introducao',
        routes: {
          '/introducao': ((context) => const LessonPage([
                Heading1(
                    "Uma ferida é uma ruptura anatômica da pele com estágios bem definidos"),
                Divider(
                  height: 40.0,
                  color: Colors.transparent,
                ),
                Textblock(
                    "Uma ferida na pele resulta da quebra da integridade da camada epidérmica. Qualquer lesão tecidual com ruptura da integridade anatômica com perda funcional pode ser descrita como ferida. A cicatrização de feridas significa principalmente a cicatrização da pele. A cicatrização da ferida começa imediatamente após uma lesão na camada epidérmica e pode levar anos. Esse processo dinâmico inclui os mecanismos celulares, humorais e moleculares altamente organizados. A cicatrização de feridas tem 3 fases sobrepostas que são inflamação, proliferação e remodelação. Qualquer interrupção leva à cicatrização anormal da ferida."),
                Divider(
                  height: 40.0,
                  color: Colors.transparent,
                ),
                PaddedImage("images/ferida.jpg"),
              ])),
          '/pos-teste-introducao': ((context) => FillInTheBlankPage(
                data: [
                  const Textblock(
                      "A cicatrização de feridas tem 3 fases sobrepostas que são"),
                  ValidatableField("inflamação"),
                  const Textblock(","),
                  ValidatableField("proliferação"),
                  const Textblock("e"),
                  ValidatableField("remodelação")
                ],
              )),
          '/cicatrizacao-primaria-secundaria': ((context) => const LessonPage([
                Heading1(
                    "Diversos fatores podem complicar o processo de cicatrização"),
                Divider(height: 40.0, color: Colors.transparent),
                Textblock(
                    "O processo biológico das feridas é ocasionalmente classificado como primário ou secundário. A cicatrização descomplicada de uma ferida não infectada e bem fechada é definida como cicatrização primária. As feridas cirúrgicas são o melhor exemplo desse tipo. Se o curso de cicatrização nesta ferida for interrompido por infecção, deiscência, hipóxia ou disfunção imunológica, inicia-se o estágio secundário de cicatrização. A partir desse ponto, ocorre a formação do tecido de granulação e a epitelização sobre esse novo tecido. Este tipo de feridas é mais suscetível a infecções e má cicatrização.")
              ]))
        });
  }
}
