import 'package:flutter/material.dart';
import 'page1.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1604871038809-0462d7c3a3a0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    )),
                child: Text(
                  'M E N U',
                  style: TextStyle(
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(10.0, 10.0),
                          blurRadius: 3.0,
                          color: Colors.white,
                        ),
                      ],
                      color: Color(0xFF9892aa),
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                title: const Text(
                  'Hakkında',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    color: Colors.black87,
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text(
                  'İletişim',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    color: Colors.black87,
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: (Image.asset(
                  "assets/images/waves.gif",
                  fit: BoxFit.fitWidth,
                  height: 352.0,
                  width: 1000.0,
                )),
              ),
              const SizedBox(
                width: 300,
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
                  maxLines: 5,
                ),
              ),
              const SizedBox(height: 8.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey, // background
                  onPrimary: Colors.blueGrey, // foreground
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const Page1();
                    }
                    )
                  );
                },
                child: const Text(
                  "Devamını oku...",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ]));
  }
}
