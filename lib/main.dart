import 'package:first/dropdown.dart';
import 'package:first/second.dart';
import 'package:first/statefull_demo.dart';
import 'package:first/textfield.dart';
import 'package:flutter/material.dart';

main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TextFieldDemo(),
    ),
  );
}

class FirstPage extends StatelessWidget {
  FirstPage({Key? key}) : super(key: key);

  Widget verticalSpace({double? space}) => SizedBox(height: space ?? 10.0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          // child: ,
        ),
        body: Center(
          child: Container(
            height: 350,
            width: 350,
            // child: Column(
            //   children: [
            //     Container(
            //       height: 100,
            //       width: 100,
            //       color: Colors.green,
            //     ),
            //     SizedBox(
            //       width: 10.0,
            //     ),
            //     Container(
            //       height: 100,
            //       width: 100,
            //       color: Colors.red,
            //     ),
            //     SizedBox(
            //       width: 10.0,
            //     ),
            //     Container(
            //       height: 100,
            //       width: 100,
            //       color: Colors.deepPurple,
            //     )
            //   ],
            // ),


            // padding: EdgeInsets.all(30.0),
            // padding: EdgeInsets.only(left: 30,right: 30),
            padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20),

            decoration: BoxDecoration(
                color: Colors.amber,
                // shape: BoxShape.circle,

                border: Border.all(color: Colors.red, width: 5.0),
                // border: Border(top: BorderSide(width: 5.0, color: Colors.red)),

                // borderRadius: BorderRadius.all(Radius.circular(20.0)),
                // borderRadius: BorderRadius.circular(20.0),
                // borderRadius: BorderRadius.only(
                //   topLeft: Radius.circular(20.0),
                //   topRight: Radius.circular(20.0),
                // ),
                // borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
                borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(20.0)),
                gradient: const RadialGradient(
                  // begin: Alignment.topLeft,
                  // end: Alignment.bottomRight,
                  // center: Alignment.bottomRight,
                  colors: [
                    Colors.orange,
                    Colors.white,
                    Colors.green,
                    Colors.amber,
                    Colors.green,
                    Colors.red,
                    Colors.amber,
                    Colors.green,
                    Colors.red,
                    Colors.amber,
                  ],
                )),

            // child: Container(
            //   // margin: EdgeInsets.all(20.0),
            //   height: double.infinity,
            //   width: double.infinity,
            //   color: Colors.green,
            // ),

            // child: Column(
            //   children: [
            //     Text('data', style: TextStyle(fontSize: 30)),
            //     verticalSpace(),
            //     Icon(Icons.image, size: 30),
            //     verticalSpace(space: 20),
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Icon(Icons.backspace_sharp),
            //         SizedBox(width: 20),
            //         Text('BACK', style: TextStyle(fontSize: 30)),
            //       ],
            //     ),
            //     verticalSpace(),
            //     FloatingActionButton(onPressed: () {}),
            //     verticalSpace(space: 50),
            //     Icon(Icons.image, size: 30),
            //   ],
            // ),
          ),
        ),
      ),
    );
  }
}
