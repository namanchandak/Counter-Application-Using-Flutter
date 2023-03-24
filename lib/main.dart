import 'package:flutter/material.dart';

//used to initialize app
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter Application',
      home: const LandingPage(),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // theme: ThemeData.light(),
    );
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  int _counter = 0;
  int _counter1 = 0;
  int _counter2 = 0;

  void increment() {
    setState(() {
      _counter++;
    });
  }

  void increment1() {
    setState(() {
      _counter1++;
    });
  }

  void decrement() {
    setState(() {
      _counter--;
    });
  }

  void increment2() {
    setState(() {
      _counter2++;
    });
  }

  void decrement2() {
    setState(() {
      _counter2--;
    });
  }

  void decrement1() {
    setState(() {
      _counter1--;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App1'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          const Text(
            "Counter",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.red),
          ),
          Text(
            "$_counter2",
            style: TextStyle(fontSize: 30, color: Colors.blue),
          ),

          Row(

              mainAxisAlignment: MainAxisAlignment.center,
            children :[
              ElevatedButton(
                onPressed: increment2,
                child: const Icon(Icons.add),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: decrement2,
                child: const Icon(Icons.remove),
              ),
            ]

          ),
////ElevatedButton.styleFrom(shape: const CircleBorder()),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  const Text(
                    "Team A",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                  Text(
                    "$_counter",
                    style: TextStyle(fontSize: 30, color: Colors.blue),
                  ),

                  Row(

                    children: [
                      ElevatedButton(
                        onPressed: increment,
                        child: const Icon(Icons.add),

                        ////circle border
                        style:
                        ElevatedButton.styleFrom(shape: const CircleBorder()),
                      ),
                      ElevatedButton(
                        onPressed: decrement,
                        child: const Icon(Icons.remove),
                      )

                    ],
                  )

                ],
              ),
////Container(color: Colors.blue ,child:Column(
//                 children: [
//                   const Text(
//                     "Team B",
//                     style: TextStyle(
//                         fontSize: 30,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.red),
//                   ),
//                   Text(
//                     "$_counter1",
//                     style: TextStyle(fontSize: 30, color: Colors.blue),
//                   ),
//
//                   Row (
//
//                     children: [
//                       ElevatedButton(
//                         onPressed: increment1,
//                         child: const Icon(Icons.add),
//                       ),
//
//
//                       const SizedBox(width: 20,),
//                       ElevatedButton(
//                         onPressed: decrement1,
//                         child: const Icon(Icons.remove),
//                       )
//                     ],
//                   ),
//
//                 ],
//               ) ),


              Expanded( flex:10,child :Container(color: Colors.blue ,child:Column(
                children: [
                  const Text(
                    "Team B",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                  Text(
                    "$_counter1",
                    style: TextStyle(fontSize: 30, color: Colors.blue),
                  ),

                  Row (

                    children: [
                      ElevatedButton(
                        onPressed: increment1,
                        child: const Icon(Icons.add),
                      ),


                      const SizedBox(width: 20,),
                      ElevatedButton(
                        onPressed: decrement1,
                        child: const Icon(Icons.remove),
                      )
                    ],
                  ),

                ],
              ) ),)





            ],
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
