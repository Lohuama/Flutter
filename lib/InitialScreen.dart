import 'package:flutter/material.dart';
import 'package:flutter_application_1/task.dart';

class InitialScreen extends StatefulWidget{
  const  InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();

}

class _InitialScreenState extends State<InitialScreen>{
  bool opacidade = true;

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: Text("Tarefas"),
        ),
        body: AnimatedOpacity(
          opacity: opacidade ? 1 : 0,
          duration: Duration(milliseconds: 800),
          child: ListView(
            children: [
              Task(
                  'Aprender Flutter',
                  'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                  3),
              Task(
                  "Andar de Bike",
                  'https://tswbike.com/wp-content/uploads/2020/09/108034687_626160478000800_2490880540739582681_n-e1600200953343.jpg',
                  2),
              Task(
                  "Meditar",
                  'https://manhattanmentalhealthcounseling.com/wp-content/uploads/2019/06/Top-5-Scientific-Findings-on-MeditationMindfulness-881x710.jpeg',
                  5),
              Task(
                  "Ler",
                  'https://thebogotapost.com/wp-content/uploads/2017/06/636052464065850579-137719760_flyer-image-1.jpg',
                  4),
              Task("Jogar",
                  'https://i.ibb.co/tB29PZB/kako-epifania-2022-2-c-pia.jpg', 1),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              opacidade = !opacidade;
            });
          },
          child: Icon(Icons.remove_red_eye),
        ),
      );
  }

}