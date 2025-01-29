import 'package:flutter/material.dart';
import 'package:teste_flutter/Models/exercicio_modelo.dart';
import 'package:teste_flutter/Models/sentimento_modelo.dart';
import 'package:teste_flutter/_core/myColors.dart';

class ExercicioTela extends StatelessWidget {
  ExercicioTela({super.key});

  final ExercicioModelo exercicioModelo = ExercicioModelo(
      id: "EX001",
      name: "Remada Baixa Supino",
      traine: "Treino A",
      hwMake:
          "Segurar a Barra na altura do umbigo e puxar até um palmo do umbigo");

  final List<SentimentoModelo> listaSentimentos = [
    SentimentoModelo(
      id: "SE001",
      fells: "Pouca Ativação Hoje",
      data: "2025-01-27",
    ),
    SentimentoModelo(
      id: "SE002",
      fells: "Ativação Moderada Hoje",
      data: "2025-01-28",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Column(children: [
            Text(exercicioModelo.name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
            Text(
              exercicioModelo.traine,
              style: const TextStyle(fontSize: 15),
            ),
          ]),
          centerTitle: true,
          backgroundColor: MyColors.deepBlue,
          elevation: 0,
          toolbarHeight: 72,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(8),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("FAB foi clicado");
          },
          child: Icon(Icons.add),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(16)),
          child: ListView(
            children: [
              SizedBox(
                height: 250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Enviar Foto"),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Deletar Foto"),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Como Fazer?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(exercicioModelo.hwMake),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Como Estou me sentindo?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(listaSentimentos.length, (index) {
                    SentimentoModelo sentimentoAgora = listaSentimentos[index];
                    return ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.zero,
                      title: Text(sentimentoAgora.fells),
                      subtitle: Text(sentimentoAgora.data),
                      leading: const Icon(Icons.double_arrow),
                      trailing: IconButton(
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                        onPressed: () {
                          print("Deletar ${sentimentoAgora.fells}");
                        },
                      ),
                    );
                  }))
            ],
          ),
        ));
  }
}
