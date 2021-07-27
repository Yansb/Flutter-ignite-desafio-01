import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meu Primeiro App",
      home: HomePage(),
      themeMode: ThemeMode.system,
      theme: ThemeData(
          primaryColor: Colors.purple,
          scaffoldBackgroundColor: Colors.purpleAccent,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Colors.purpleAccent)),
      darkTheme: ThemeData(
          primaryColor: Colors.black, scaffoldBackgroundColor: Colors.grey),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        title: "Contador",
      ),
      body: Center(
        child: Text(
          "Contagem: $count",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const AppBarCustom({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("$title"),
      centerTitle: true,
    );
  }
}
