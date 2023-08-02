import 'package:flutter/material.dart';
import 'package:untitled/controller/ProdutoController.dart';

import '../dtos/ProdutoDto.dart';

class ProdutosTela2 extends StatefulWidget {
  @override
  _ProdutosTelaState2 createState() => _ProdutosTelaState2();
}

class _ProdutosTelaState2 extends State<ProdutosTela2> {
  List<ProdutoDto> produtoList = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getProdutoList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produtos'),
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: produtoList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.add_a_photo),
                  title: Text(produtoList[index].nomeProduto),
                  subtitle: Row(
                    children: [
                      Text("estoque atual.: 00120"),
                      Text(" - "),
                      Text("preço.: R\$ 1230,52"),
                    ],
                  ),
                  shape: Border.all(color: Colors.black12),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    //todo
                  },
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getProdutoList();
        },
        child: Icon(Icons.refresh),
      ),
    );
  }

  void getProdutoList() {
    setState(() {
      isLoading = true;
    });
    Future<List<ProdutoDto>> futureProdutos =
        ProdutoController().buscarProdutoList();
    futureProdutos.then((listaProdutos) {
      produtoList = listaProdutos;
      setState(() {
        isLoading = false;
      });
    }).catchError((erro) {
      // Trate qualquer erro que ocorra durante a obtenção dos produtos
    });
  }
}
