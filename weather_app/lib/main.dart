import 'package:flutter/material.dart';
import 'package:weather_app/model/weatherModel.dart';
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
  Weather? apiData;

  Future<void> getApiData() async {
    apiData = await client.getCurrentWeather("japan");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: FutureBuilder(
          future: getApiData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: Text(
                        "${apiData!.cityName}",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                  const Divider(),
                  Container(
                    height: 100,
                    child: GridView(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, mainAxisExtent: 50),
                      children: [
                        Text("Temp       ${apiData!.temp}"),
                        Text("Feels like ${apiData!.feelLike}"),
                        Text("wind speed ${apiData!.windspeed}"),
                        Text("humidity   ${apiData!.humidity}"),
                      ],
                    ),
                  )
                ],
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return Container();
            }
          },
        ));
  }
}
