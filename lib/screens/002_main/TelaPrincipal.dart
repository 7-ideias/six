import 'dart:async';

import 'package:flutter/material.dart';

import 'IconWithLabel.dart';

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  int _currentIndex = 0;

  Color _currentColor = Colors.red;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _currentColor = _currentColor == Colors.red ? Colors.white : Colors.red;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Principal'),
      ),
      body: tela2(),
      drawer: menuLateral(context),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              // Lógica para quando o botão do carrinho de compras for pressionado
            },
            child: Icon(Icons.shopping_cart),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              // Lógica para quando o botão de adição for pressionado
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  Widget menuLateral(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width * 0.8,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            child: imagemDaBarraLateral(),
          ),
          opcaoDaBarraLateral('Clientes', Icons.abc_outlined),
          opcaoDaBarraLateral('Produtos', Icons.verified_user),
          opcaoDaBarraLateral('Servicos', Icons.account_box),
          opcaoDaBarraLateral('Settings', Icons.settings),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
              // leading: Icon(Icons.star),
              title: Text("Favoritos"),
              subtitle: Text("meus favoritos..."),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                debugPrint('toquei no drawer');
              })
        ],
      ),
    );
  }

  Widget opcaoDaBarraLateral(String text, IconData icon) {
    return ListTile(
      title: Text(text),
      leading: Icon(icon),
      onTap: () => {
        if (text == 'Clientes')
          {Navigator.of(context).pushNamed('/clientes')}
        else if (text == 'Produtos')
          {Navigator.of(context).pushNamed('/produtos')}
        else if (text == 'Servicos')
          {Navigator.of(context).pushNamed('/servicos')}
        else if (text == 'Settings')
          {Navigator.of(context).pushNamed('/configs')}
      },
    );
  }

  Widget imagemDaBarraLateral() {
    return Container(
      child: UserAccountsDrawerHeader(
        accountName: Text("nome da conta"),
        accountEmail: Text("carlos@email.com.br"),
        currentAccountPicture: CircleAvatar(
          radius: 30.0,
          backgroundImage: AssetImage('assets/carlosFotoPerfil_laranja.jpg'),
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }

  Widget tela() {
    return Container(
        // color: Colors.white,
        child: Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.yellow,
    ));
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (int index) {
        if (index == 1) {
          // Abra o menu suspenso que ocupa 50% da tela
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Novo'),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: [
                          Text('Pedido'),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      botoesDePedido(),
                      SizedBox(height: 10.0),
                      Row(
                        children: [
                          Text('Cadastro'),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      itensDeCadastro()
                    ],
                  ),
                ),
              );
            },
          );
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'BT1',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'NOVO',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'BT2',
        ),
      ],
    );
  }

  Widget itensDeCadastro() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconWithLabel(
            icon: Icons.home,
            label: 'Receita',
          ),
          SizedBox(width: 10),
          IconWithLabel(
            icon: Icons.search,
            label: 'Despesa',
          ),
          SizedBox(width: 10),
          IconWithLabel(
            icon: Icons.favorite,
            label: 'Agenda',
          ),
          SizedBox(width: 10),
          IconWithLabel(
            icon: Icons.shopping_cart,
            label: 'Serviço',
          ),
          SizedBox(width: 10),
          IconWithLabel(
            icon: Icons.person,
            label: 'Produto',
          ),
        ],
      ),
    );
  }

  Container botoesDePedido() {
    return Container(
      height: MediaQuery.of(context).size.height / 5,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    child: getCardDePedido('Serviço'),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: getCardDePedido('Venda'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 10,
          ),
          Expanded(
            child: Container(
              child: Card(
                elevation: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.accessibility),
                        SizedBox(
                          width: 10,
                        ),
                        Text('PDV'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Card getCardDePedido(String texto) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.abc_rounded),
            SizedBox(
              width: 10,
            ),
            Text(texto),
          ],
        ),
      ),
    );
  }

  Widget tela2() {
    return Container(
      color: Colors.yellow,
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          buildColorido(context),
        ],
      ),
    );
  }

  double width() => 90;

  Widget buildColorido(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 90,
            height: 90,
            margin: EdgeInsets.only(right: 20),
            color: _currentColor,
          ),
          Container(
            width: 90,
            height: 90,
            margin: EdgeInsets.only(right: 20),
            color: _currentColor,
          ),
          Container(
            width: 90,
            height: 90,
            color: _currentColor,
          ),
        ],
      ),
    );
  }
}
