import 'package:flutter/material.dart';
import 'package:newo/screens/first.dart';
import 'package:newo/screens/second.dart';

void main() {
  runApp(MaterialApp(home: Myapp(),));
}

class first extends StatefulWidget {
  first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  onPressed: () { 
                    setState(() {
                      Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {return FirstS();},
                    )
                  );
                      
                    });
                    
                  },
                  child: Text('go to the page 1',style: TextStyle(fontSize: 20)),
                ),
              ),
              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 155, 91, 87)),
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {return second();},
                    ),
                  );
                      
                    });
                     
                  },
                  child: Text('go to the page 2',style: TextStyle(fontSize: 20),),
                ),
              )
            ],
          )
          );
    
  }
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return first();
  }
}
