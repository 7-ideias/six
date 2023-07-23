import 'package:flutter/material.dart';
import 'package:untitled/screens/003_register/products/TelaProdutos.dart';

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Principal'),
      ),
      body: tela(),
      drawer: menuLateral(context),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  Container menuLateral(BuildContext context) {
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

  ListTile opcaoDaBarraLateral(String text, IconData icon) {
    return ListTile(
      title: Text(text),
      leading: Icon(icon),
      onTap: () => {
        if (text == 'Produtos')
          {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TelaProdutos()),
            )
          }
      },
    );
  }

  Container imagemDaBarraLateral() {
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

  Container tela() {
    return Container(
      // color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.yellow,
                      child: Center(
                        child: Text('xxxxx'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.redAccent,
                      child: Center(
                        child: Text('xxxxx'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.green,
                child: Center(
                  child: Text('yyyyyy'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (int index) {
        setState(() {
          _currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Buscar',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Perfil',
        ),
      ],
    );
  }
}
