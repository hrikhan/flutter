import 'package:flutter/material.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  State<StatefulWidget> createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    result = double.parse(textEditingController.text) * 109.47;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Currency converter"),
          foregroundColor: const Color.fromARGB(239, 255, 255, 255),
          backgroundColor: const Color.fromARGB(239, 2, 0, 0),
        ),
        backgroundColor: Color.fromARGB(210, 71, 73, 73),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                " $result ",
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 3, 247, 85),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
              ),
              TextField(
                controller: textEditingController,
                style: TextStyle(color: Color.fromARGB(255, 7, 138, 246)),
                decoration: InputDecoration(
                  hintText: "please enter amount of USD",
                  hintStyle: TextStyle(color: Color.fromARGB(255, 18, 2, 34)),
                  suffixIcon: Icon(Icons.monetization_on),
                  suffixIconColor: Color.fromARGB(96, 244, 6, 6),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87, width: 3),
                    borderRadius: BorderRadius.all(
                      Radius.circular(500),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87, width: 3),
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(255, 242, 240, 245),
                ),
                keyboardType: TextInputType.number,
              ),
              Padding(
                padding: const EdgeInsets.all(10.2),
                child: ElevatedButton(
                  child: Text("Convert"),
                  style: ButtonStyle(
                      fixedSize: MaterialStatePropertyAll(
                        Size(5000, 60),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(233, 12, 1, 1))),
                  onPressed: convert,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
