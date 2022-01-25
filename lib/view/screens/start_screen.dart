import 'package:flutter/material.dart';
import 'package:productio/view/screens/customer_screen.dart';

import 'store_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text.rich(
              TextSpan(
                text: "So, ",
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.green),
                children: [
                  TextSpan(
                    text: "Let's Go",
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontSize: 72,
                          color: Colors.black54,
                          letterSpacing: -2,
                        ),
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => CustomerScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "Continue as Customer",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => StoreScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "Continue as Vendor",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
