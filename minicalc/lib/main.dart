import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  //Controllers
  final TextEditingController _n2Controller = TextEditingController();
  final TextEditingController _n1Controller = TextEditingController();
  final TextEditingController _resultController = TextEditingController();

  @override
  void dispose() {
    //Limpa os controles ao fehcra a tela
    _n1Controller.dispose();
    _n2Controller.dispose();
    _resultController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // AppBar
        appBar: AppBar(
          title: Text("Mini Calculdora"),
          backgroundColor: const Color.fromARGB(255, 0, 255, 21),
        ),

        // Body
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              //Campo : Valor A
              TextField(
                controller: _n1Controller,
                decoration: InputDecoration(
                  labelText: 'Informe o Valor A',
                  prefixIcon: Icon(Icons.numbers),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),

              //Espaçamento entre os campos
              SizedBox(height: 16),

              //Campo: Valor B
              TextField(
                controller: _n2Controller,
                decoration: InputDecoration(
                  labelText: 'Informe valor B',
                  prefixIcon: Icon(Icons.numbers),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),

              //Espaçamento entre os campos
              SizedBox(height: 16),

              Row(
                children: [
                  // Botão de Soma
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        //todo : implementar soma
                        print(
                          "Valores informados: \n n1 : ${_n1Controller} n2: ${_n2Controller}",
                        );

                        //Devemos tratar os numertos antes de realizar a operação

                        String n1Tratado = _n1Controller.text.replaceAll(
                          ',',
                          '.',
                        );
                        String n2Tratado = _n2Controller.text.replaceAll(
                          ',',
                          '.',
                        );
                        try {
                          double resultado =
                              double.parse(n1Tratado) + double.parse(n2Tratado);

                          print("Resultado: ${resultado}");

                          _resultController.text = resultado.toString();
                        } catch (e) {
                          _resultController.text = "Erroer !!";
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                      ),
                      child: Text('Soma'),
                    ),
                  ),
                  SizedBox(width: 10),
                  //Botão DE  Subtração
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        //TODO : Implemnetar subtração
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                      ),
                      child: Text('Subtração'),
                    ),
                  ),
                  //Botão DE  Multiplicação
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        //TODO : Implemnetar multiplicação
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                      ),
                      child: Text('Multiplicaçao'),
                    ),
                  ),
                ],
              ),
              // Espaçamento entre os Campos
              SizedBox(height: 16),

              // Campo:  Resultado
              TextField(
                controller: _resultController,
                decoration: InputDecoration(
                  labelText: 'Resultado',
                  prefixIcon: Icon(Icons.equalizer),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                enabled: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
