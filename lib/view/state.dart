import 'package:flutter/material.dart';

class HalamanBaru extends StatefulWidget {
  const HalamanBaru({super.key});

  @override
  State<HalamanBaru> createState() => _HalamanBaruState();
}

class _HalamanBaruState extends State<HalamanBaru> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Halaman Baru"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                    margin: EdgeInsets.only(left: 20),
                    padding: EdgeInsets.symmetric(horizontal:  20),
                    color: Colors.yellow,
                    alignment: Alignment.center,
                    width: 200,
                    height: 200,
                    child: AspectRatio(
                      aspectRatio: 4/1, 
                      child: Container(color: Colors.blue,),
                    )
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle, 
                      color: Colors.green,
                      boxShadow:[ 
                        BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        offset: Offset(5,5),
                      )
                      ]
                    ),
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    height: 300,
                    width: 300,
                    child: Card(
                      child: Text("Ini adalah card"),
                    ),
              ),
              Container(
                  width: 400,
                  height: 400,
                  decoration: BoxDecoration(
                  image: DecorationImage(
                  image: NetworkImage(
                    'https://i.pravatar.cc/400?img=58'),
                    fit: BoxFit.cover,
                    ),
                    border: Border.all(
                    color: Colors.indigo,
                    width: 10,
                    ),
                ),
              ),
              Divider(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network('https://i.pravatar.cc/100?img=1'),
                  Image.network('https://i.pravatar.cc/100?img=2'),
                  Image.network('https://i.pravatar.cc/100?img=3'),
                ],
              ),
              Divider(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network('https://i.pravatar.cc/100?img=4'),
                    Image.network('https://i.pravatar.cc/100?img=5'),
                    Image.network('https://i.pravatar.cc/100?img=6'),
                    Image.network('https://i.pravatar.cc/100?img=7'),
                    Image.network('https://i.pravatar.cc/100?img=8'),
                    Image.network('https://i.pravatar.cc/100?img=9'),
                    Image.network('https://i.pravatar.cc/100?img=10'),
                  ],
                ),
              ),
              Divider(
                height: 20,
              ),
              Stack(
              children: [
                Image.network("https://placekittens.com/320/320?image=12"),
                Image.asset(scale: 0.0005,"asset/images/missing.png")
              ],
            ),
            Divider(
              height: 20,
            ),
            Container(
              height:500, 
              child: 
                GridView.count(
                  crossAxisCount: 3, 
                  children: cats(),
                  )
                )


          ],

        ),
      ),
    );
  }

  List<Widget> cats() {
   List<Widget> temp = [];
   int i = 0;
   while (i < 18) {
     Widget w = Image.network(
     "https://placekittens.com/120/120?image=" + i.toString());
     temp.add(w);
     i++;
    }
   return temp;

  }
}