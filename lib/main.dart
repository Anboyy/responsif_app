import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        breakpoints: [
          ResponsiveBreakpoint.autoScale(480, name: MOBILE),
          ResponsiveBreakpoint.resize(800, name: TABLET),
          ResponsiveBreakpoint.autoScale(1000, name: DESKTOP),
        ],
      ),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsif App'),
      ),
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              Profile(Icon(Icons.person), 'I Kadek Yawan', Icon(Icons.call)),
              Profile(Icon(Icons.person), 'I Komang Yandi', Icon(Icons.call)),
              Profile(Icon(Icons.person), 'I Made Ditha', Icon(Icons.call)),
              Profile(Icon(Icons.person), 'I Putu Pratama', Icon(Icons.call)),
              Container(
                width: 200,
                height: 200,
                color: Colors.amber,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Image.asset('aset/R.jpg'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  final Icon leading;
  final String title;
  final Icon trailing;
  Profile(this.leading, this.title, this.trailing);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: Text(title),
      trailing: trailing,
    );
  }
}
