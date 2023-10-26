import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool _isBlur = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Stack(
          children: [
            Image.network('https://tinyurl.com/2p8zr2ze',fit: BoxFit.cover,height: double.infinity,),
            Center(
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    _isBlur = !_isBlur;
                  });
                },
                child: Glassmorphism(
                  blur: _isBlur ? 20 : 0,
                  opacity: 0.2,
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Center(child: Text('Click here',style: TextStyle(color: Colors.white),)),
                  ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}

