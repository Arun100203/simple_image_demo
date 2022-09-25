
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
    MaterialApp(
      darkTheme: ThemeData(primarySwatch: Colors.grey),
      initialRoute:"Home",
      routes: {
        '/' : (context) => const Home(),
        '/login' : (context) => const Login(),
      },
    );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   MediaQuery(
        data: const MediaQueryData(),
        child: MaterialApp(
            home:Scaffold(
              appBar: AppBar(title: const Text("hey hey",style: TextStyle(fontSize: 45),),),
              body: const Home(),
              //backgroundColor: Colors.white,
            )
        ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final TextEditingController _name = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(120.00),
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: _name,
              decoration: const InputDecoration(
                label: Text("enter name"),
                border: OutlineInputBorder(gapPadding: 4.0),
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: _password,
              decoration: const InputDecoration(
                label: Text("enter password"),
                border: OutlineInputBorder(gapPadding: 4.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>const Login()));
                },
                child: const Text("Submit")
            ),
          ),
        ],
      ),
    );
  }

}


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Login_page"),
      ),
      body: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Welcome!..",style: TextStyle(
              decoration: TextDecoration.none,
              color: Colors.blueAccent,
            ),),
            OutlinedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: const Text("Go Back")
            ),
          ]
        )
      ),
    );
  }
}
