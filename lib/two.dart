import 'package:flutter/material.dart';

class two extends StatefulWidget {

    int no,a,b,c;
    String name;
    List<String> contact;
    bool status;
    two(this.no,this.name,this.contact,this.status,this.a,this.b,this.c);


        @override
  State<two> createState() => _twoState();
}

class _twoState extends State<two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Second Page",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Go To Previus", style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    color: Colors.indigo),
              )
          ),
          Text("${widget.no}",style: TextStyle(fontSize: 20)),
          Text("${widget.name}",style: TextStyle(fontSize: 20)),
          Text("${widget.contact}",style: TextStyle(fontSize: 20)),
          Text("${widget.status}",style: TextStyle(fontSize: 20)),

          Text("${widget.a}+${widget.b}=${widget.c=widget.a+widget.b}"),
          Text("${widget.a}-${widget.b}=${widget.c=widget.a-widget.b}"),
          Text("${widget.a}x${widget.b}=${widget.c=widget.a*widget.b}"),
          Text("${widget.a}/${widget.b}=${widget.c=widget.a~/widget.b}"),
          Text("${widget.a}%${widget.b}=${widget.c=widget.a%widget.b}",),


          CloseButton(onPressed: () {
            Navigator.pop(context);
            },),
          FloatingActionButton(onPressed: () {
            Navigator.of(context);
          },),
        ],
      ),
    );
  }
}
