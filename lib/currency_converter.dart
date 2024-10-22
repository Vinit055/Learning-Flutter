// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});
  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialState();
}

class _CurrencyConverterMaterialState
    extends State<CurrencyConverterMaterialPage> {
  final TextEditingController textEditorController = TextEditingController();
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
        foregroundColor: Colors.white,
        title: const Text(
          'Currency Converter',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w600,
            fontFamily: 'Delius',
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromRGBO(0, 0, 0, 0.9),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                '₹ ${result.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Delius',
                ),
              ),
            ),
            Container(
              //color: Colors.white,
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 8,
              ),
              // padding: const EdgeInsets.symmetric(
              //   horizontal: 10.0,
              //   vertical: 8.0,
              // ),
              child: TextField(
                controller: textEditorController,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  hintText: 'Please enter the amount in USD',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Icon(Icons.monetization_on),
                  ),
                  prefixIconColor: Colors.grey,
                  filled: true,
                  fillColor: Colors.black,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.0,
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 5,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 15,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  backgroundColor: const Color.fromARGB(255, 48, 140, 186),
                  foregroundColor: Colors.white,
                  shadowColor: const Color.fromARGB(255, 5, 74, 131),
                  padding: const EdgeInsets.all(20),
                  minimumSize: const Size(double.infinity, 60),
                ),
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditorController.text) * 84.07;
                  });
                },
                child: const Text(
                  'Convert to INR',
                  style: TextStyle(
                    fontFamily: 'Delius',
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
