import 'package:flutter/material.dart';
new text

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}






class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var c = TextEditingController();
  var name;
  //String c ='cat';
  //var c = 'Hello World';

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            ElevatedButton(
              child: Text('次ペ�?�ジ'),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>NextPage()));
              },
            ),
            TextButton(
              onPressed: () { /* ボタンがタ�?プされた時�?�処�? */ },
              child: Text('click here'),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Password',
                icon: Icon(Icons.security),
              ),
              //autocorrect: false,
              //autofocus: false,
              //keyboardType: TextInputType.text,
              controller: c,
              obscureText: true,
              onChanged: (text) {
                // TODO: ここで取得したtextを使�?
                name = text;
              },
              //onChanged: _passwordChanged,
             // onSubmitted: _passwordSubmitted,
            ),

            Text(
              '$name',
              style: Theme.of(context).textTheme.headlineMedium,
            ),



          ],


        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}




class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('【画面遷移�?モ�?2ペ�?�ジ'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("戻�?"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('次ペ�?�ジ'),
        onPressed: (){

          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NextPage2()));
        },

      ),


    );
  }
}


class NextPage2 extends StatelessWidget {
  int i=0;

  void incrementCounter() {
    print("aaa");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('【画面遷移�?モ�?3ペ�?�ジ'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Image.asset('image/b.png'),

      ),
      floatingActionButton: FloatingActionButton(
        child: Text('次ペ�?�ジ'),
        onPressed: (){

          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NextPage3()));
        },

      ),

    );
  }
}




class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}







class NextPage3 extends StatelessWidget {
  int _counter = 0;
  var c = TextEditingController();
  var c1 = TextEditingController();
  var c2 = TextEditingController();
  var name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('教師用入力画面'),
        backgroundColor: Colors.red,
      ),

      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '課題登録:',
            ),



            TextField(
              decoration: InputDecoration(
                labelText: '科目�?',
                //hintText: 'Password',
                //icon: Icon(Icons.security),
              ),
              //autocorrect: false,
              //autofocus: false,
              //keyboardType: TextInputType.text,
              controller: c,
              //obscureText: true,
              onChanged: (text) {
                // TODO: ここで取得したtextを使�?
                name = text;
              },
              //onChanged: _passwordChanged,
              // onSubmitted: _passwordSubmitted,
            ),

            TextField(
              decoration: InputDecoration(
                labelText: '�?�?日',

              ),

              controller: c1,
              //obscureText: true,
              onChanged: (text) {
                // TODO: ここで取得したtextを使�?
                name = text;
              },
              //onChanged: _passwordChanged,
              // onSubmitted: _passwordSubmitted,
            ),

            TextField(
              decoration: InputDecoration(
                labelText: '�?容',
                //hintText: 'Password',
                //icon: Icon(Icons.security),
              ),
              //autocorrect: false,
              //autofocus: false,
              //keyboardType: TextInputType.text,
              controller: c2,
              //obscureText: true,
              onChanged: (text) {
                // TODO: ここで取得したtextを使�?
                name = text;
              },
              //onChanged: _passwordChanged,
              // onSubmitted: _passwordSubmitted,
            ),





            TextButton(
              onPressed: () { /* ボタンがタ�?プされた時�?�処�? */ },
              child: Text('登録'),
            ),





          ],


        ),
      ),

    );
  }
}
