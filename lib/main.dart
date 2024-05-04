import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        
        
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 64, 238, 41)),
        useMaterial3: true,
      ),
      home:  MyHomePage(title: 'Global-Net ltd',),
    );
  }
}

class MyHomePage extends StatefulWidget {
   MyHomePage({super.key, required this.title});

  

  final String title;
    String captionlist="";
 

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String currentfortune="";

  final fortunelist=[
    "It takes courage to grow up and become who you really are — E.E. Cummings",
    "Your self-worth is determined by you. You don't have to depend on someone telling you who you are. — Beyoncé",
    "Nothing is impossible. The word itself says 'I'm possible!'— Audrey Hepburn",
    "Keep your face always toward the sunshine, and shadows will fall behind you. — Walt Whitman",
    " You have brains in your head. You have feet in your shoes. You can steer yourself any direction you choose.",
    "You're on your own. And you know what you know. And you are the guy who'll decide where to go. — Dr. Seuss",
    "Attitude is a little thing that makes a big difference. — Winston Churchill",
    "To bring about change, you must not be afraid to take the first step. We will fail when we fail to try.— Rosa Parks",
    "All our dreams can come true, if we have the courage to pursue them.— Walt Disney",
    "When you can’t find someone to follow, you have to find a way to lead by example." ,
    "There is no better compass than compassion." ,
    "Surgery for my legs cause I can't stand you hoes.",
    "Goodbyes are for those that leave and don't come back, I intend on coming back one day. _Thiago Solva ",
    "Stand before the people you fear and speak your mind – even if your voice shakes." ,
    "It’s a toxic desire to try to be perfect. I realized later in life that the challenge is not to be perfect. It’s to be whole." ,
    "Vitality shows not only in the ability to persist but in the ability to start over." ,
    "The most common way people give up their power is by thinking they don’t have any." ,
    "Love yourself first and everything else falls into line." ,
    "In three words I can sum up everything I've learned about life: It goes on." ,
  ];
   void randomfortune(){
    var random= Random();
   
    int fortune=random.nextInt(fortunelist.length);
    setState(() {
      currentfortune=fortunelist[fortune];
    });

    print(currentfortune);
  }

  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title),
      ),
      body: Center(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Card(
              child: Padding(
                padding:const EdgeInsets.all(10.0),
                child: Text(
              "Remember!",
              style: Theme.of(context).textTheme.titleMedium,
              ),
                ),
             ),
              
            

              
               Card(
                child: Padding(
                  padding:const EdgeInsets.all(28.0),
                  child: Text(
              "${currentfortune}",
             style:Theme.of(context).textTheme.titleLarge,
              ),
                ),
               
            ),

            ElevatedButton(onPressed: randomfortune, 
            child: Text(" Next "),
            ),
                       



          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: randomfortune,
        tooltip: 'learn',
        child: const Icon(Icons.preview_outlined),//next_plan //add
      ), // This trailing comma makes auto-formatting nicer for build methods.
       

    );
  }
}
