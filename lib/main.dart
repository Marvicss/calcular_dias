import 'package:calcular_dias/login.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Calcular Dias',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: LoginPage());
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});


//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {

//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
   
//     return Scaffold(
//       appBar: AppBar(
       
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
//         title: Text(widget.title),
//       ),
//       body: const Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             TextField(
//               decoration: InputDecoration(
//                 hintText: "Email",
//               ),
//             ),
//             SizedBox(height: 50.0),
//             TextField(
//               decoration: InputDecoration(hintText: "Password"),
//               obscureText: true,
//             ),
//             SizedBox(height: 20.0),
//           ],
//         ),
//       ),
//     );
//   }
// }
