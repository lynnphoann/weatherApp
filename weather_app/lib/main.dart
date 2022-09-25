import 'package:flutter/material.dart';
import 'package:weather_app/weatherApi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  WeatherApi client = WeatherApi();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    client.getCurrentWeather("japan");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.2,
              child: Text(
                "London",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          const Divider(),
          Container(
            height: 100,
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 50),
              children: [
                Text("Temp       14*"),
                Text("Feels like 15*"),
                Text("wind speed 2.06*"),
                Text("humidity   57*")
              ],
            ),
          )
        ],
      ),
    );
  }
}
