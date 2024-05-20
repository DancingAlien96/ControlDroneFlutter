import 'package:droneapp/mqtt/state/MQTTAppState.dart';
import 'package:droneapp/widget/mqttView.dart';
import 'package:droneapp/widget/principal.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MQTTAppState>(
      create: (_) => MQTTAppState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: PrincipalPage(), // Página que se muestra primero
      ),
    );
  }
}
