import 'package:flutter/material.dart';
import 'package:listadefrutas/screen/controller/fruit.controller.dart';

class FruitListScreen extends StatefulWidget {
  const FruitListScreen({super.key});

  @override
  State<FruitListScreen> createState() => _FruitListScreenState();
}

class _FruitListScreenState extends State<FruitListScreen> {

    late FruitController _fruitController;


    @override
  void initState() {
    _fruitController = FruitController();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Frutas"),
      ),
      body: ListenableBuilder(
        listenable: _fruitController,
        builder:(BuildContext context, Widget? child){
        return ListView.builder(
          itemBuilder: (BuildContext context, int index){
          return ListTile(
              title: Text(_fruitController.fruit[index].name),
              subtitle: Text(_fruitController.fruit[index].price),
            );
          });
        } ,
        
        ),
    );
  }
}
