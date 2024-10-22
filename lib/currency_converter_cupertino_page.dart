import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoPage();
}

class _CurrencyConverterCupertinoPage
    extends State<CurrencyConverterCupertinoPage> {
  final TextEditingController textEditorController = TextEditingController();
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: Color.fromRGBO(0, 0, 0, 0),
        middle: Text(
          'Currency Converter',
          style: TextStyle(
            color: CupertinoColors.white,
            fontSize: 35,
            fontWeight: FontWeight.w600,
            fontFamily: 'Delius',
          ),
        ),
      ),
      backgroundColor: const Color.fromRGBO(0, 0, 0, 0.9),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                '₹ ${result.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: CupertinoColors.white,
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
              child: CupertinoTextField(
                controller: textEditorController,
                style: const TextStyle(
                  color: CupertinoColors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
                decoration: BoxDecoration(
                  color: CupertinoColors.black,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                placeholder: 'Please enter the amount in USD',
                prefix: const Icon(
                  CupertinoIcons.money_dollar_circle,
                  color: CupertinoColors.systemGrey,
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
              child: CupertinoButton(
                color: const Color.fromARGB(255, 48, 140, 186),
                minSize: double.infinity,
                borderRadius: BorderRadius.circular(10),
                padding: const EdgeInsets.all(20),
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
