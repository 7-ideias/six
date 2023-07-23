import 'package:flutter/material.dart';
class CadastroProduto extends StatefulWidget {
  @override
  _CadastroProdutoState createState() => _CadastroProdutoState();
}
class _CadastroProdutoState extends State<CadastroProduto> {
  String _nomeProduto = '';
  String _descricaoProduto = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Produto'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  _nomeProduto = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'Nome do Produto',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              onChanged: (value) {
                setState(() {
                  _descricaoProduto = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'Descrição do Produto',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Implemente a lógica para salvar o produto
                print('Nome do Produto: $_nomeProduto');
                print('Descrição do Produto: $_descricaoProduto');
              },
              child: Text('Salvar'),
            ),
          ],
        ),
      ),
    );
  }
}