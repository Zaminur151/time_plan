import 'package:flutter/material.dart';
import 'package:time_plan/app/view/theme/light_theme.dart';
import 'package:time_plan/app/view/widget/social_button.dart';

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
      theme: LightTheme().theme,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.access_alarm),
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          
              SizedBox(
                width: double.infinity,
                child: FilledButton(onPressed: (){}, 
                child: const Text(
                  'Primary button'
                )),
              ),
              SizedBox( height: 10,),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(onPressed: (){}, 
                child: const Text(
                  'Outlined button'
                )),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  label: const Text('User Name')
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  label: const Text('Email'),
                  suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.visibility_off_outlined))
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: SocialButton.google( onTap: (){})
                ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: SocialButton.apple(onTap: (){})
                ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: SocialButton.mail( onTap: (){})
                ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialButton.google(onTap: (){},isOnlyIcon: true,),
                  SocialButton.apple(onTap: (){},isOnlyIcon: true,),
                  SocialButton.mail(onTap: (){},isOnlyIcon: true,),
                ],
              ),




              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
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
