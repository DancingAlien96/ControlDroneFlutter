import 'package:droneapp/widget/informacion.dart';
import 'package:droneapp/widget/mqttView.dart';
import 'package:flutter/material.dart';

class PrincipalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(30),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: 
               
              [ Text("Drone App",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),),
              
                IconButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => InfoPage()),
        );
      },
      icon: Icon(Icons.info, size: 37,),
    ),],),
              SizedBox(height: 50,),
              CircleAvatar(
                radius: 150,
                backgroundImage: AssetImage('lib/assets/drone.png'),
              ),
              SizedBox(height: 100),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MQTTView()),
                  );
                },
                child: Text("Abrir control"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
