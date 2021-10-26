import 'package:flutter/material.dart';
import 'page2.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                width: 500,
                child: Text(
                  "Picture a wave in the ocean. "
                      "You can see it, measure it, its height, the way the sunlight refracts when it passes through,"
                      " and it's there, and you can see it, you know what it is. "
                      "It's a wave. "
                      "And then it crashes on the shore, and it's gone. "
                      "But the water is still there. The wave was just a different way for the water to be for a little while.",
                  textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Pacifico',
                      color: Colors.black54),
                  maxLines: 35,
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey, // background
                onPrimary: Colors.blueGrey, // foreground
              ),
              onPressed: () {
                _navigateAndDisplaySelection(context);
              },
              child: const Text(
                "İçeriği beğendiniz mi?",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        )
    );
  }
  void _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SelectionScreen()),
    );
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text('$result')));
  }
}
