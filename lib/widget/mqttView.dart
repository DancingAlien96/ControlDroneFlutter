import 'dart:io' show Platform;
import 'package:droneapp/mqtt/MQTTManager.dart';
import 'package:droneapp/mqtt/state/MQTTAppState.dart';
import 'package:droneapp/widget/informacion.dart';
import 'package:droneapp/widget/principal.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MQTTView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MQTTViewState();
  }
}

class _MQTTViewState extends State<MQTTView> {
  final TextEditingController _hostTextController = TextEditingController();
  final TextEditingController _messageTextController = TextEditingController();
  final TextEditingController _topicTextController = TextEditingController();
  late MQTTAppState currentAppState;
  late MQTTManager manager;
  String? motor1;
  String? motor2;
  String? motor3;
  String? motor4;
  String? motores;
  bool _isPressed = false;
  bool _isOn = false;
  bool? m1b1;
  bool? m1b2;
  bool? m1b3;
  bool? m1b4;
  bool? m1b5;
  bool? m1b6;
  bool? m1b7;
  bool? m1b8;
  bool? m1b9;
  bool? m1b10;
  bool? m1b11;
  bool? m1b12;
  bool? m1b13;
  bool? m1b14;
  bool? m1b15;
  bool? m1b16;
  bool? m1b17;
  bool? m1b18;
  bool? m1b19;
  bool? m1b20;
  bool? m1b21;

  bool? m2b1;
  bool? m2b2;
  bool? m2b3;
  bool? m2b4;
  bool? m2b5;
  bool? m2b6;
  bool? m2b7;
  bool? m2b8;
  bool? m2b9;
  bool? m2b10;
  bool? m2b11;
  bool? m2b12;
  bool? m2b13;
  bool? m2b14;
  bool? m2b15;
  bool? m2b16;
  bool? m2b17;
  bool? m2b18;
  bool? m2b19;
  bool? m2b20;
  bool? m2b21;

  bool? m3b1;
  bool? m3b2;
  bool? m3b3;
  bool? m3b4;
  bool? m3b5;
  bool? m3b6;
  bool? m3b7;
  bool? m3b8;
  bool? m3b9;
  bool? m3b10;
  bool? m3b11;
  bool? m3b12;
  bool? m3b13;
  bool? m3b14;
  bool? m3b15;
  bool? m3b16;
  bool? m3b17;
  bool? m3b18;
  bool? m3b19;
  bool? m3b20;
  bool? m3b21;

  bool? m4b1;
  bool? m4b2;
  bool? m4b3;
  bool? m4b4;
  bool? m4b5;
  bool? m4b6;
  bool? m4b7;
  bool? m4b8;
  bool? m4b9;
  bool? m4b10;
  bool? m4b11;
  bool? m4b12;
  bool? m4b13;
  bool? m4b14;
  bool? m4b15;
  bool? m4b16;
  bool? m4b17;
  bool? m4b18;
  bool? m4b19;
  bool? m4b20;
  bool? m4b21;

  void m1false() {
    m1b1 = false;
    m1b2 = false;
    m1b3 = false;
    m1b4 = false;
    m1b5 = false;
    m1b6 = false;
    m1b7 = false;
    m1b8 = false;
    m1b9 = false;
    m1b10 = false;
    m1b11 = false;
    m1b12 = false;
    m1b13 = false;
    m1b14 = false;
    m1b15 = false;
    m1b16 = false;
    m1b17 = false;
    m1b18 = false;
    m1b19 = false;
    m1b20 = false;
    m1b21 = false;
  }

  void m2false() {
    m2b1 = false;
    m2b2 = false;
    m2b3 = false;
    m2b4 = false;
    m2b5 = false;
    m2b6 = false;
    m2b7 = false;
    m2b8 = false;
    m2b9 = false;
    m2b10 = false;
    m2b11 = false;
    m2b12 = false;
    m2b13 = false;
    m2b14 = false;
    m2b15 = false;
    m2b16 = false;
    m2b17 = false;
    m2b18 = false;
    m2b19 = false;
    m2b20 = false;
    m2b21 = false;
  }

  void m3false() {
    m3b1 = false;
    m3b2 = false;
    m3b3 = false;
    m3b4 = false;
    m3b5 = false;
    m3b6 = false;
    m3b7 = false;
    m3b8 = false;
    m3b9 = false;
    m3b10 = false;
    m3b11 = false;
    m3b12 = false;
    m3b13 = false;
    m3b14 = false;
    m3b15 = false;
    m3b16 = false;
    m3b17 = false;
    m3b18 = false;
    m3b19 = false;
    m3b20 = false;
    m3b21 = false;
  }

  void m4false() {
    m4b1 = false;
    m4b2 = false;
    m4b3 = false;
    m4b4 = false;
    m4b5 = false;
    m4b6 = false;
    m4b7 = false;
    m4b8 = false;
    m4b9 = false;
    m4b10 = false;
    m4b11 = false;
    m4b12 = false;
    m4b13 = false;
    m4b14 = false;
    m4b15 = false;
    m4b16 = false;
    m4b17 = false;
    m4b18 = false;
    m4b19 = false;
    m4b20 = false;
    m4b21 = false;
  }

  @override
  void initState() {
    super.initState();
    motor1 = "0001";
    motor2 = "0001";
    motor3 = "0001";
    motor4 = "0001";
    motores = '$motor1,$motor2,$motor3,$motor4';

    m1false();
    m2false();
    m3false();
    m4false();
  }

  @override
  void dispose() {
    _hostTextController.dispose();
    _messageTextController.dispose();
    _topicTextController.dispose();
    super.dispose();
  }
   
  //estado de la conexion del broker  
  @override
  Widget build(BuildContext context) {
    final MQTTAppState appState = Provider.of<MQTTAppState>(context);
    // Keep a reference to the app state.
    currentAppState = appState;
    final Scaffold scaffold = Scaffold(body: _buildColumn());
    return scaffold;
  }

  Widget _buildAppBar(BuildContext context) {
    return AppBar(
      title: const Center(child: Text('Drone Control')),
      backgroundColor: Colors.grey,
    );
  }
   //ESTE ES EL INICIADOR DE TODOS LOS WIDGETS
  Widget _buildColumn() {
    return ListView(
      children: <Widget>[
        _buildAppBar(context),
        _buildConnectionStateText(
            _prepareStateMessageFrom(currentAppState.getAppConnectionState)),
        _buildEditableColumn(),
         SizedBox(height: 50),
        _buildButtonsControl(),
        //Fila(m1b20!, m2b20!, m3b20!, m4b20!, '0032', '2300')
        //Fila(m1b21!, m2b21!, m3b21!, m4b21!, '0532', '2350')
        //_buildScrollableTextWith(currentAppState.getHistoryText)
      ],
    );
  }
  

  Row Fila(bool m1, bool m2, bool m3, bool m4, String n, String o) {
    return Row(
      children: [
        //boton de un estilo elevado 
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll(m1 ? Colors.green : Colors.red)),
          onPressed: currentAppState.getAppConnectionState ==
                  MQTTAppConnectionState.connected
              ? () {
                  setState(() {
                    m1false();
                    m1 = true;
                    motor1 = n;
                  });
                  //este es el mensaje que se manda al broker 
                  _publishMessage('$motor1,$motor2,$motor3,$motor4');
                }
              : null,
          child: Text(o),
        ),
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll(m2 ? Colors.green : Colors.red)),
          onPressed: currentAppState.getAppConnectionState ==
                  MQTTAppConnectionState.connected
              ? () {
                  setState(() {
                    m2false();
                    m2 = true;
                    motor2 = n;
                  });
                  _publishMessage('$motor1,$motor2,$motor3,$motor4');
                }
              : null,
          child: Text(o),
        ),
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll(m3! ? Colors.green : Colors.red)),
          onPressed: currentAppState.getAppConnectionState ==
                  MQTTAppConnectionState.connected
              ? () {
                  setState(() {
                    m3false();
                    m3 = true;
                    motor3 = n;
                  });
                  _publishMessage('$motor1,$motor2,$motor3,$motor4');
                }
              : null,
          child: Text(o),
        ),
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll(m4 ? Colors.green : Colors.red)),
          onPressed: currentAppState.getAppConnectionState ==
                  MQTTAppConnectionState.connected
              ? () {
                  setState(() {
                    m4false();
                    m4 = true;
                    motor4 = n;
                  });
                  _publishMessage('$motor1,$motor2,$motor3,$motor4');
                }
              : null,
          child: Text(o),
        ),
      ],
    );
  }

  Widget _buildEditableColumn() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          _buildTextFieldWith(_hostTextController, 'direccion de broker',
              currentAppState.getAppConnectionState),
          const SizedBox(height: 10),
          _buildTextFieldWith(_topicTextController, 'escribir topic',
              currentAppState.getAppConnectionState),
          const SizedBox(height: 10),
          //_buildPublishMessageRow(),
          //const SizedBox(height: 10),
          _buildConnecteButtonFrom(currentAppState.getAppConnectionState),

        ],
      ),
    );
  }

  Widget _buildPublishMessageRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          child: _buildTextFieldWith(_messageTextController, 'escribir mensaje',
              currentAppState.getAppConnectionState),
        ),
        _buildSendButtonFrom(currentAppState.getAppConnectionState)
      ],
    );
  }

  Widget _buildConnectionStateText(String status) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
              color: Colors.greenAccent,
              child: Text(status, textAlign: TextAlign.center)),
        ),
      ],
    );
  }

  //boton para elevar a ciertas revoluciones 
  Widget _buildButtonsControl() {
  return 
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [ 
              IconButton(
        
        onPressed: currentAppState.getAppConnectionState == MQTTAppConnectionState.connected? () {
                setState(() {
                _isPressed = !_isPressed;  
                _isOn = !_isOn;
                });
                  //m3 es motor 1 
                  //m2 es motor 3
                  //m1 es motor 4
                  //m4 es motor 2
                  //m4, m3, m1, m2
                  String message = _isPressed ? '0581,0051,0071,0561'  : '0001,0001,0001,0001';
          _publishMessage(message);

              }
            : null,
          icon: Icon(Icons.power_settings_new_outlined,
        size: 100,
        color: _isPressed ? Colors.green : Colors.red,),
      ),
       
     ],),
     SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
    children: [

      //boton adelante 
      IconButton(
  onPressed: currentAppState.getAppConnectionState == MQTTAppConnectionState.connected
      ? () {
          if (_isOn) { // Verifica si _isOn es true
            setState(() {
              //_isPressed = !_isPressed;  
            });
            //m4, m3, m1, m2
            // Publica la primera cadena inmediatamente
            _publishMessage('0581,0551,0571,0561');
            
            // Publica la segunda cadena después de 5 segundos
            Future.delayed(Duration(milliseconds: 1500), () {
              _publishMessage('0581,0051,0071,0561');
            });
          }
        }
      : null,
  icon: Icon(
    Icons.arrow_circle_up_rounded,
    size: 100,
    color: Colors.black,
  ),
),

    ],
  ),

  //fila para boton izquierda y derecha 
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    IconButton(
        
        onPressed: currentAppState.getAppConnectionState == MQTTAppConnectionState.connected? () {
               if(_isOn){
                 setState(() {
                   
                });
                //m4, m3, m1, m2
                                //tira el publish al drone 
               _publishMessage('0571,0061,0561,0561');
            
            // Publica la segunda cadena después de 5 segundos
            Future.delayed(Duration(milliseconds: 1500), () {
              _publishMessage('0581,0051,0071,0561');
            });
               };
                
              }
            : null,
          icon: Icon(Icons.arrow_circle_left_rounded, size: 100, color: Colors.black),
      ),
IconButton(
        
        onPressed: currentAppState.getAppConnectionState == MQTTAppConnectionState.connected? () {
               if(_isOn){
                 setState(() {
                  
                });
                //m4, m3, m1, m2
                 //tira el publish al drone 
               _publishMessage('0081,0551,0051,0081');
            
            // Publica la segunda cadena después de 5 segundos
            Future.delayed(Duration(milliseconds: 1500), () {
              _publishMessage('0581,0051,0071,0561');
            });
               };
               
                }
            : null,
          icon: Icon(Icons.arrow_circle_right_rounded, size: 100, color: Colors.black),
      )
  ],),
  Row(
          mainAxisAlignment: MainAxisAlignment.center,
    children: [
       
      IconButton(
        
        onPressed: currentAppState.getAppConnectionState == MQTTAppConnectionState.connected? () {
                if(_isOn){
                  setState(() {
                  
                });
                  //m4, m3, m1, m2
                 //tira el publish al drone para que esta se vaya para atras   
                 _publishMessage('0091,0051,0071,0071');
            
            // Publica la segunda cadena después de 5 segundos
            Future.delayed(Duration(milliseconds: 1500), () {
              _publishMessage('0581,0051,0071,0561');
            });
                


                
                };
              }
            : null,
          icon: Icon(Icons.arrow_circle_down_rounded, size: 100, color: Colors.black),
      ),
    ],
  )

  ]
  ,);
      
}


  Widget _buildTextFieldWith(TextEditingController controller, String hintText,
      MQTTAppConnectionState state) {
    bool shouldEnable = false;
    if (controller == _messageTextController &&
        state == MQTTAppConnectionState.connected) {
      shouldEnable = true;
    } else if ((controller == _hostTextController &&
            state == MQTTAppConnectionState.disconnected) ||
        (controller == _topicTextController &&
            state == MQTTAppConnectionState.disconnected)) {
      shouldEnable = true;
    }
    return TextField(
        enabled: shouldEnable,
        controller: controller,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.only(left: 0, bottom: 0, top: 0, right: 0),
          labelText: hintText,
        ));
  }


  Widget _buildScrollableTextWith(String text) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.withOpacity(0.7))),
        margin: EdgeInsets.all(5),
        width: 400,
        height: 400,
        child: SingleChildScrollView(
          child: Text(text),
        ),
      ),
    );
  }
 
 //boton para conectar con el broker
  Widget _buildConnecteButtonFrom(MQTTAppConnectionState state) {
    return Row(
      children: <Widget>[
        Expanded(
          // ignore: deprecated_member_use
          child: ElevatedButton(
            //color: Colors.lightBlueAccent,
            child: const Text('conectar'),
            onPressed: state == MQTTAppConnectionState.disconnected
              
                ? 
                
                _configureAndConnect 
                
                : null, //
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          // ignore: deprecated_member_use
          child: ElevatedButton(
            //color: Colors.redAccent,
            child: const Text('desconectar'),
            onPressed: state == MQTTAppConnectionState.connected
                           
                ? _disconnect
                : null, //
          ),
        ),
      ],
    );
  }

  Widget _buildSendButtonFrom(MQTTAppConnectionState state) {
    // ignore: deprecated_member_use
    return ElevatedButton(
      //color: Colors.green,
      child: const Text('enviar'),
      onPressed: state == MQTTAppConnectionState.connected
          ? () {
              _publishMessage(_messageTextController.text);
            }
          : null, //
    );
  }

  // Utility functions
  String _prepareStateMessageFrom(MQTTAppConnectionState state) {
    switch (state) {
      case MQTTAppConnectionState.connected:
        return 'conectado';
      case MQTTAppConnectionState.connecting:
        return 'conectando';
      case MQTTAppConnectionState.disconnected:
        return 'desconectado';
    }
  }

  void _configureAndConnect() {
    // ignore: flutter_style_todos
    // TODO: Use UUID
    String osPrefix = 'Flutter_iOS';
    if (Platform.isAndroid) {
      osPrefix = 'Flutter_Android';
    }
    manager = MQTTManager(
        host: _hostTextController.text,
        topic: _topicTextController.text,
        identifier: osPrefix,
        state: currentAppState);
    manager.initializeMQTTClient();
    manager.connect();
  }

  void _disconnect() {
    manager.disconnect();
  }
  
  //mandar mensajes al broker 
  void _publishMessage(String text) {
    //String osPrefix = 'Flutter_iOS';
    if (Platform.isAndroid) {
      //osPrefix = 'Flutter_Android';
    }
    final String message = text;
    manager.publish(message);
    _messageTextController.clear();
  }
}
