import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi primer app clima',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ecosistema'),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        margin: EdgeInsets.all(6),
        padding: EdgeInsets.all(10),
        color: Colors.orange,
        child: Column(children: [
          Text('San Francisco', style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 36)),
          Text('Nublado', style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20)),
          Row(
            children: [
              Icon(Icons.cloud, size: 64,color: Colors.cyan,),
              Text('19 C', style: TextStyle(color: Colors.white, fontSize: 48, fontWeight: FontWeight.w100),)
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,),
          Align(
            child: MaterialButton(onPressed: (){
              ScaffoldMessenger.of(context).
                showSnackBar(SnackBar(content: Text('Actualizando datos del clima...')));
            }, child: Text('Actualizar datos'),color: Colors.yellow),
          alignment: Alignment.center,),

        ],
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,),
      ),
    );
  }
}