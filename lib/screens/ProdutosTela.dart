import 'package:flutter/material.dart';
import 'package:untitled/screens/003_register/products/DetalheProduto.dart';

class ProdutosTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produtos Cadastrados'),
      ),
      body: Tela(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/cadastro_produto');
        },
        child: Icon(Icons.add),
      ),
    );
  }

  ListView Tela(BuildContext context) {
    return ListView.builder(
      itemCount: 101,
      itemBuilder: (context, index) {
        return ProdutosList(context, index);
      },
    );
  }

  Card ProdutosList(BuildContext context, int index) {
    return Card(
        elevation: 5,
        margin: const EdgeInsets.all(5),
        child: ListTile(
            // leading: Icon(Icons.star),
            title: Text('Item ${index + 1}'),
            subtitle: Text("outras infos..."),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              debugPrint('toquei no drawer');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetalheProduto()),
              );
            }));
  }
}
