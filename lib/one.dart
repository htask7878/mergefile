import 'package:flutter/material.dart';
import 'package:mergefile/two.dart';

class one extends StatefulWidget {
  const one({Key? key}) : super(key: key);

  @override
  State<one> createState() => _oneState();
}

int a = 10, b = 3, c = 0;

int no = 10;
String name = "Hardik";
List<String> contact = ["787417471", "8712345643"];
bool status = true;

class _oneState extends State<one> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page",
            style: TextStyle(color: Colors.white, fontSize: 20)
        // style: Go,

        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              //todo Navigator.push
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return two(no, name, contact, status, a, b, c);
                  },
                ),
              );
            },
            child: Text(
              "Go to NextPage",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Text("${no}", style: TextStyle(fontSize: 20)),
          Text("${name}", style: TextStyle(fontSize: 20)),
          Text("${contact}", style: TextStyle(fontSize: 20)),
          Text("${status}", style: TextStyle(fontSize: 20)),
          Text("${a}+${b}=${c = a + b}", style: TextStyle(fontSize: 10)),
          Text("${a}-${b}=${c = a - b}", style: TextStyle(fontSize: 10)),
          Text("${a}x${b}=${c = a * b}", style: TextStyle(fontSize: 10)),
          Text("${a}/${b}=${c = a ~/ b}", style: TextStyle(fontSize: 10)),
          Text("${a}%${b}=${c = a % b}", style: TextStyle(fontSize: 10)),
          Ink.image(
            image: NetworkImage(
                "https://images.unsplash.com/photo-1642104704074-907c0698cbd9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c29saWRpdHl8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
            height: 200,
            // centerSlice:,
            fit: BoxFit.fitHeight,
          ),
// FloatingActionButton(onPressed: () {
// Navigator.popUntil(context, (route) => false);
// },),

        ],
      ),
    );
  }
}
