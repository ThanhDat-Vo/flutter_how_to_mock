import 'package:flutter/material.dart';
import 'package:how_to_mock/services/time_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TimeService _timeService;
  @override
  void initState() {
    _timeService = TimeService();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FutureBuilder(
          future: _timeService.getCurrentTime(DateTime.now()),
          builder: (context, snapshot) {
            if (snapshot.hasData == false) return Container();
            return Text(
              "Good " + snapshot.data + "!",
              key: Key("CurrentTime"),
            );
          },
        ),
      ),
    );
  }
}
