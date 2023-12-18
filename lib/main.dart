import 'package:flutter/material.dart';

void main() {
  runApp(const MyElevatedButton());
}
class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Elevated Button tutorial"),
        ),
        body: Material(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child:Text("Click"),
                  onPressed: (){
                    print("Outlined Button is Pressed");
                  },
                  onLongPress: (){
                    print("Outlined Button is On Long Pressed");
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton.icon(
                  icon: Icon(Icons.login),
                  label:Text("Login"),
                  onPressed: (){
                    print("Outlined Button is Pressed");
                  },
                  onLongPress: (){
                    print("Outlined Button is On Long Pressed");
                  },
                  style: ElevatedButton.styleFrom(
                    //elevation: 10,
                    //shadowColor: Colors.grey,
                    side: BorderSide(color: Colors.black,width: 2),
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton.icon(
                  icon: Icon(Icons.login),
                  label:Text("Login"),
                  onPressed: (){
                    print("Outlined Button is Pressed");
                  },
                  onLongPress: (){
                    print("Outlined Button is On Long Pressed");
                  },
                  style: OutlinedButton.styleFrom(
                    //elevation: 10,
                    //shadowColor: Colors.grey,
                    side: BorderSide(color: Colors.pink,width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30),),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
