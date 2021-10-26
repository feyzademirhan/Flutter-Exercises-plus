import 'package:flutter/material.dart';

class SelectionScreen extends StatelessWidget {
  const SelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/nice-logo.png",
              fit: BoxFit.contain,
              height: 65,
            ),
            Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  "things.com",
                  style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Pacifico',
                    fontSize: 23,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(4.0, 4.0),
                        blurRadius: 1.0,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ))
          ],
        ),
        centerTitle: true,
        toolbarHeight: 65,
        backgroundColor: const Color(0xFFc0c0c0),
        elevation: 5,
        actions: [
          IconButton(
              onPressed: () => {},
              icon: const Icon(Icons.search),
              color: Colors.white),
          IconButton(
              onPressed: () => {},
              icon: const Icon(Icons.account_circle),
              color: Colors.white),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey, // background
                  onPrimary: Colors.blueGrey, // foreground
                ),
                onPressed: () {

                  Navigator.pop(context, 'Evet! :)');
                },
                child: const Text('Evet! :)',
                  style: TextStyle(color: Colors.white),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey, // background
                  onPrimary: Colors.blueGrey, // foreground
                ),
                onPressed: () {
                  Navigator.pop(context, 'Hayır. :(');
                },
                child: const Text('Hayır. :(',
                  style: TextStyle(color: Colors.white),),
              ),
            )
          ],
        ),
      ),
    );
  }
}

