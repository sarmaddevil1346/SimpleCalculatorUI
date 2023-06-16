import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Calculator());
  }
}

  class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator>createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget ButtonDesign(String txt, Color btncolor, Color txtcolor) {
    return MaterialButton(
      onPressed: () {},
      shape: const CircleBorder(),
      padding: const EdgeInsets.all(20),
      color: btncolor,
      child: Text(
        txt,
        style: TextStyle(color: txtcolor, fontSize: 35),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "Calculator",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "0",
                    style: TextStyle(color: Colors.white, fontSize: 100),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                ButtonDesign('AC', Colors.grey, Colors.white),
                ButtonDesign("+/-", Colors.grey, Colors.white),
                ButtonDesign("%", Colors.grey, Colors.white),
                ButtonDesign("/", Colors.amber.shade700, Colors.white),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                ButtonDesign("7", Colors.grey, Colors.white),
                ButtonDesign("8", Colors.grey, Colors.white),
                ButtonDesign("9", Colors.grey, Colors.white),
                ButtonDesign("*", Colors.amber.shade700, Colors.white),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                ButtonDesign("4", Colors.grey, Colors.white),
                ButtonDesign("5", Colors.grey, Colors.white),
                ButtonDesign("6", Colors.grey, Colors.white),
                ButtonDesign("-", Colors.amber.shade700, Colors.white),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                ButtonDesign("1", Colors.grey, Colors.white),
                ButtonDesign("2", Colors.grey, Colors.white),
                ButtonDesign("3", Colors.grey, Colors.white),
                ButtonDesign("+", Colors.amber.shade700, Colors.white),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: () {},
                  padding: const EdgeInsets.fromLTRB(34, 20, 128, 20),
                  shape: const StadiumBorder(),
                  color: Colors.grey,
                  child: const Text(
                    "0",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
                ButtonDesign(".", Colors.grey, Colors.white),
                ButtonDesign("=", Colors.amber, Colors.white),

              ],
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
