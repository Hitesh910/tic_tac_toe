import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tic_tac_toe"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 380,width: 500,
            // color: Colors.red,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: Colors.red),
            child: Expanded(
              child: SizedBox(
                // height: 10,
                width: MediaQuery.sizeOf(context).width,
                child: GridView.builder(
                  padding: EdgeInsets.all(4),
                  itemCount: 9,
                  gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 20,
                      width: 20,
                      margin: EdgeInsets.all(5),
                      // color: Colors.amber,
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: Colors.amber),
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
