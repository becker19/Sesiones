import 'package:ejercicio/pages/sesion3/containerani.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IndexSesion3 extends StatefulWidget {
  const IndexSesion3({super.key});

  @override
  State<IndexSesion3> createState() => _IndexSesion3State();
}

class _IndexSesion3State extends State<IndexSesion3> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Sesion 3'),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.amber,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: <Widget>[
              MaterialButton(
                  height: 50,
                  minWidth: double.infinity,
                  elevation: 1,
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.check,
                        color: Colors.black,
                      ),
                      Text('ContainerAnimated'),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Anime()),
                    );
                  }),
              MaterialButton(
                height: 50,
                minWidth: double.infinity,
                elevation: 1,
                color: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.check,
                      color: Colors.black,
                    ),
                    Text('AlertDialog Cupertino'),
                  ],
                ),
                onPressed: () {
                  showCupertinoDialog(
                    context: context,
                    builder: (context) => CupertinoAlertDialog(
                      title: Text('title'),
                      content: Text('content'),
                      actions: <Widget>[
                        if ('cancelActionText' != null)
                          CupertinoDialogAction(
                            child: Text('Cancelar'),
                            onPressed: () => Navigator.of(context).pop(false),
                          ),
                        CupertinoDialogAction(
                          child: Text('Aceptar'),
                          onPressed: () => Navigator.of(context).pop(true),
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 5,
              ),
              MaterialButton(
                height: 50,
                minWidth: double.infinity,
                elevation: 1,
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.check,
                      color: Colors.black,
                    ),
                    Text('AlertDialog'),
                  ],
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: const Text("Login Failed!"),
                      content: const Text(
                        "Invalid credential !! Please check your email or password",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text(
                            "Try again",
                            style: TextStyle(color: Colors.cyan, fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                height: 200,
                width: double.infinity,
                child: FadeInImage(
                  placeholder: AssetImage('assets/giphy.gif'),
                  image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2017/08/10/08/47/laptop-2620118_960_720.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              const Card(child: ListTile(title: Text('One-line ListTile'))),
              const Card(
                child: ListTile(
                  leading: FlutterLogo(),
                  title: Text('One-line with leading widget'),
                ),
              ),
              const Card(
                child: ListTile(
                  title: Text('One-line with trailing widget'),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
              const Card(
                child: ListTile(
                  leading: FlutterLogo(),
                  title: Text('One-line with both widgets'),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
              const Card(
                child: ListTile(
                  title: Text('One-line dense ListTile'),
                  dense: true,
                ),
              ),
              const Card(
                child: ListTile(
                  leading: FlutterLogo(size: 56.0),
                  title: Text('Two-line ListTile'),
                  subtitle: Text('Here is a second line'),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
              const Card(
                child: ListTile(
                  leading: FlutterLogo(size: 72.0),
                  title: Text('Three-line ListTile'),
                  subtitle: Text(
                      'A sufficiently long subtitle warrants three lines.'),
                  trailing: Icon(Icons.more_vert),
                  isThreeLine: true,
                ),
              ),
              Card(
                elevation: 50,
                shadowColor: Colors.black,
                color: Colors.greenAccent[100],
                child: SizedBox(
                  width: 300,
                  height: 600,
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green[500],
                          radius: 108,
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://media.geeksforgeeks.org/wp-content/uploads/20210101144014/gfglogo.png"), //NetworkImage
                            radius: 100,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'GeeksforGeeks',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.green[900],
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'GeeksforGeeks is a computer science portal for geeks at geeksforgeeks.org. It contains well written, well thought and well explained computer science and programming articles, quizzes, projects, interview experiences and much more!!',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.green,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        MaterialButton(
                          height: 50,
                          minWidth: double.infinity,
                          elevation: 1,
                          color: Colors.amber,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.check,
                                color: Colors.black,
                              ),
                              Text('Enviar')
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox.fromSize(
                    // size: Size.fromRadius(150),
                    child: Image.network(
                        'https://cdn.pixabay.com/photo/2017/08/10/08/47/laptop-2620118_960_720.jpg',
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
