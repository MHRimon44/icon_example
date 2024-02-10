import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    title: 'Icon Widget Example',
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
    home: Scaffold(
      appBar: AppBar(title: const Text('Icon Widget Example'),),
      backgroundColor: Colors.grey,
      body: const MyApp(),
    ),
  ));
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int volumn = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        color: Colors.white,
        padding: const EdgeInsets.only(top: 16),
        child: Column(
          children: [
            Icon(
                Icons.volume_up,
              size: 50,
              color: Colors.red.shade900,
            ),
            IconButton(
                icon: const Icon(Icons.volume_up),
                onPressed:(){
                  print('On Pressed');
                  setState(() {
                    volumn +=1;
                  });
                } ,
            ),
            Text('$volumn'),
          ],
        ),
      ),
    );
  }
}
