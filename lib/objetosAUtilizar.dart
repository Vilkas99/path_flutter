import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:icon_shadow/icon_shadow.dart';

import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
//Esta es la extensión para la barra de progreso (Doc: https://pub.dev/packages/flutter_rounded_progress_bar#-readme-tab-)

//***********************************Vic**************************

//Pantalla con los objetos desarrollados por Vic (Para poder entender el disñeo y funcionalidad de cada uno)
class PantallaObjetos extends StatefulWidget {
  @override
  _PantallaObjetosState createState() => _PantallaObjetosState();
}

class _PantallaObjetosState extends State<PantallaObjetos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: MenuDashboardPage(
            objetos: ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "Caja tema descripción:",
                      style: TextStyle(color: Colors.greenAccent, fontSize: 20),
                    ),
                    CajaTemaDescripcion(
                      sizeDesc: 20.0,
                      sizeTitulo: 20.0,
                      titulo: "Hola",
                      desc: "Quiobo",
                    ),
                    Text(
                      "Caja problema",
                      style: TextStyle(color: Colors.greenAccent, fontSize: 20),
                    ),
                    CajaProblema(
                      colorTarjeta: Colors.blue,
                    ),
                    Text(
                      "Input ovalado",
                      style: TextStyle(color: Colors.greenAccent, fontSize: 20),
                    ),
                    InputOvalado(),
                    Text(
                      "Botón regresar",
                      style: TextStyle(color: Colors.greenAccent, fontSize: 20),
                    ),
                    BotonRegresar(),
                    Text(
                      "Drop Objetivo",
                      style: TextStyle(color: Colors.greenAccent, fontSize: 20),
                    ),
                    dropObetivo()
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

class CajaTemaDescripcion extends StatelessWidget {
  CajaTemaDescripcion(
      {this.sizeDesc: 17.0,
      this.sizeTitulo: 40.0,
      this.titulo: "Titulo",
      this.desc: "Descripcion",
      this.colorTitulo: Colors.black});

  final sizeDesc;
  final sizeTitulo;

  final titulo;
  final desc;

  final colorTitulo;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * .9, //.9 default
        height: MediaQuery.of(context).size.height * .2, //.2 default
        padding: EdgeInsets.only(top: 25),
        child: Column(
          children: <Widget>[
            Text(
              desc,
              style: TextStyle(fontSize: sizeDesc),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              titulo,
              style: TextStyle(
                  fontSize: sizeTitulo,
                  letterSpacing: 3,
                  fontFamily: 'MPLUS',
                  fontWeight: FontWeight.w700,
                  color: colorTitulo),
            )
          ],
        ),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.black38, offset: Offset(5, 10), blurRadius: 10)
        ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}

class CajaProblema extends StatelessWidget {
  CajaProblema({this.colorTarjeta});

  final colorTarjeta;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          //Sombra 1
          Container(
            width: MediaQuery.of(context).size.width * .6,
            height: MediaQuery.of(context).size.height * .49,
            padding: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: Color(0xff737272),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40)),
            ),
          ),

          //Sombra 2
          Container(
            width: MediaQuery.of(context).size.width * .6,
            height: MediaQuery.of(context).size.height * .475,
            padding: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40)),
            ),
          ),

          //Tarjeta principal
          Container(
            width: MediaQuery.of(context).size.width * .6,
            height: MediaQuery.of(context).size.height * .45,
            padding: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12, spreadRadius: 10, blurRadius: 30)
                ]),
            child: Column(
              children: <Widget>[
                //Contenedor para el titulo
                Container(
                  padding: EdgeInsets.only(left: 40, right: 40),
                  child: TextField(
                    decoration: null,
                    textAlign: TextAlign.center,
                    maxLength: 150,
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'MPLUS',
                        fontWeight: FontWeight.w700),
                  ),
                ),

                //Línea que separa el titulo del texto
                Container(
                  width: 120,
                  child: Divider(
                    color: colorTarjeta,
                    thickness: 1,
                  ),
                ),
                //Contenedor para la descripción
                Container(
                  width: MediaQuery.of(context).size.width * .5,
                  height: MediaQuery.of(context).size.height * .32,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(color: colorTarjeta),
                      borderRadius: BorderRadius.circular(30)),
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 9,
                    decoration: null,
                    maxLength: 150,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InputOvalado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * .35,
        height: MediaQuery.of(context).size.height * .04,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            border: Border.all(color: Colors.white, width: 1)),
        child: TextField(
          decoration: null,
          textAlign: TextAlign.center,
          maxLength: 15,
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'MPLUS',
              fontWeight: FontWeight.w700,
              color: Colors.white),
          //TODO: Colocar funcion que utilice lo que haya colocado el usuario.
          onSubmitted: (nuevoValor) {
            print(nuevoValor);
          },
        ),
      ),
    );
  }
}

class BotonRegresar extends StatelessWidget {
  BotonRegresar({this.colorBtn: Colors.white});
  final colorBtn;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.black, blurRadius: 45)]),
        width: 40,
        child: RawMaterialButton(
          fillColor: colorBtn,
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
          ),
          child: Icon(
            Icons.arrow_back,
            size: 40,
          ),
        ),
      ),
    );
  }
}

class dropObetivo extends StatefulWidget {
  @override
  _dropObetivoState createState() => _dropObetivoState();
}

class _dropObetivoState extends State<dropObetivo> {
  bool aceptado = false;

  @override
  Widget build(BuildContext context) {
    return DragTarget(
        builder: (BuildContext context, List<String> llegada, List rechazado) {
          if (!aceptado) {
            return Container(
              child: Text(
                "Espacio",
                style: TextStyle(
                  fontFamily: "Amaranth",
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(17.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 15.0,
                    spreadRadius: 2.0,
                  )
                ],
              ),
            );
          } else {
            return CareerCard(
              careerName: "OCUPADO",
            );
          }
        },
        onWillAccept: (data) => true,
        onAccept: (data) {
          setState(() {
            aceptado = true;
          });
        },
        onLeave: (data) {
          setState(() {
            aceptado = false;
          });
        });
  }
}

//Clase que nos permite generar la pantalla con los botones de menu funcionales
class MenuDashboardPage extends StatefulWidget {
  //Toma los objetos (Widgets) que desplegará en pantalla.
  final objetos;
  MenuDashboardPage({this.objetos});

  @override
  _MenuDashboardPageState createState() =>
      _MenuDashboardPageState(objetos: objetos);
}

class _MenuDashboardPageState extends State<MenuDashboardPage> {
  final objetos;
  _MenuDashboardPageState({this.objetos});

  //Booleano que me indica si el menu está escondido
  bool escondido = true;
  double anchoPantalla, alturaPantalla;
  //Duración de la animación de desplazamiento
  final Duration duracion = const Duration(milliseconds: 100);

  @override
  Widget build(BuildContext context) {
    //Obtenemos el tamaño de la pantalla.
    Size tamanio = MediaQuery.of(context).size;
    anchoPantalla = tamanio.width;
    alturaPantalla = tamanio.height;

    return Scaffold(
      backgroundColor: escondido ? Colors.grey : Colors.black,
      body: Stack(
        children: <Widget>[
          //Menu que se mostrará al presionar el botón.
          menu(context),
          //Dashborado que contendrá todos los obejtos de la pantalla en cuestión
          dashboard(context, objetos),
        ],
      ),
    );
  }

  //Widget que posee el menu a desplegar
  Widget menu(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //Conjunto de textos que fungen como 'botones' para desplazarse a otra página'
            GestureDetector(
              child: Text(
                "Perfíl",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onTap: () {
                //TODO: Colocar el navigator para la pantalla a viajar.
              },
            ),
            SizedBox(height: 10),
            GestureDetector(
              child: Text(
                "Perfíl",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onTap: () {
                //TODO: Colocar el navigator para la pantalla a viajar.
              },
            ),
            SizedBox(height: 10),
            GestureDetector(
              child: Text(
                "Perfíl",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onTap: () {
                //TODO: Colocar el navigator para la pantalla a viajar.
              },
            ),
            SizedBox(height: 10),
            GestureDetector(
              child: Text(
                "Perfíl",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onTap: () {
                //TODO: Colocar el navigator para la pantalla a viajar.
              },
            ),
            SizedBox(height: 10),
            GestureDetector(
              child: Text(
                "Perfíl",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onTap: () {
                //TODO: Colocar el navigator para la pantalla a viajar.
              },
            ),
          ],
        ),
      ),
    );
  }

  //Widget que posee el espacio para color los objetos a conformar de la pantalla.
  Widget dashboard(context, objetos) {
    //Tenmos una posición animada.
    return AnimatedPositioned(
      duration: duracion,
      //Si el menu está escondido, todas sus posiciones erán 0
      //Si no, se desplazará a un valor numerico multplicado por el ancho o alto de la pantalla.
      top: escondido ? 0 : 0.2 * alturaPantalla,
      bottom: escondido ? 0 : 0.2 * anchoPantalla,
      left: escondido ? 0 : 0.6 * anchoPantalla,
      right: escondido ? 0 : -0.4 * anchoPantalla,
      child: Material(
        animationDuration: duracion,
        borderRadius: BorderRadius.all(Radius.circular(40)),
        elevation: escondido ? 0 : 20,
        color: Colors.grey,
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              //Si los objetos que tenemos como argumento no son nulos, entonces colocamos un SizedBox
              (objetos != null) ? objetos : SizedBox(),
              //Depsués añadimos un padding, que tendrá el botón de menu
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 30,
                      ),
                      //Al ser tocado...
                      onTap: () {
                        setState(
                          () {
                            //Cambiará el estado de mi valor booleano.
                            escondido = !escondido;
                          },
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//*********************Dany****************************

class CareerCard extends StatelessWidget {
  CareerCard({@required this.careerName});
  final String careerName;

  @override
  Widget build(BuildContext context) {
    return Draggable(
      data: careerName,
      child: UnconstrainedBox(
        child: Container(
          child: Text(
            careerName,
            style: TextStyle(
              fontFamily: "Amaranth",
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          margin: EdgeInsets.all(10.0),
          padding: EdgeInsets.all(17.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                spreadRadius: 2.0,
              )
            ],
          ),
        ),
      ),
      feedback: UnconstrainedBox(
        child: Container(
          child: Text(
            careerName,
            style: TextStyle(
              fontFamily: "Amaranth",
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          margin: EdgeInsets.all(50.0),
          padding: EdgeInsets.all(17.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
      childWhenDragging: Container(),
    );
  }
}

class MainButton extends StatelessWidget {
  MainButton(
      {@required this.onTap,
      @required this.buttonText,
      @required this.leftButtonIcon});

  final Function onTap;
  final String buttonText;
  final bool leftButtonIcon; // true = left icon, false = right icon

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: leftButtonIcon
          ? UnconstrainedBox(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(width: 15.0),
                    /*
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: <Widget>[
                  Icon(MdiIcons.rhombus,
                    color: Colors.white.withOpacity(0.1),
                    size: 45.0),
                  Icon(MdiIcons.rhombus,
                    color: Colors.white,
                    size: 30.0,
                  ),
                ],
              ),*/
                    IconShadowWidget(
                      Icon(
                        MdiIcons.rhombus,
                        color: Colors.white,
                        size: 32.0,
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Text(
                      buttonText,
                      style: TextStyle(
                        fontFamily: "Amaranth",
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 15.0),
                  ],
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                margin: EdgeInsets.all(5.0),
                padding: EdgeInsets.all(5.0),
                height: 50.0,
              ),
            )
          : UnconstrainedBox(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(width: 15.0),
                    Text(
                      buttonText,
                      style: TextStyle(
                        fontFamily: "Amaranth",
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 15.0),
                    IconShadowWidget(
                      Icon(
                        MdiIcons.rhombus,
                        color: Colors.white,
                        size: 32.0,
                      ),
                    ),
                    SizedBox(width: 15.0),
                  ],
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(5.0),
                height: 50.0,
              ),
            ),
    );
  }
}

class ProfilePic extends StatelessWidget {
  //https://www.youtube.com/watch?v=7uqmY6le4xk
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 65,
      backgroundColor: Color(0xFA5A5275),
      child: Container(
        width: 120.0,
        height: 120.0,
        child: ClipOval(
          child: Image.asset(
            'images/default_pic.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

class SidebarMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 30.0,
              height: 4.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              width: 20.0,
              height: 4.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
              ),
            )
          ],
        ),
        onTap: () {
          print("Drawer");
        },
      ),
    );
  }
}

class SliderPath extends StatelessWidget {
  SliderPath({@required this.sColor, @required this.onChanged, this.sValue});

  final Color sColor;
  final Function onChanged;
  final int sValue;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        inactiveTrackColor: Color(0xFF8D8E98),
        activeTrackColor: sColor.withOpacity(0.7),
        thumbColor: sColor,
        overlayColor: sColor.withOpacity(0.2),
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
        overlayShape: RoundSliderOverlayShape(overlayRadius: 18.0),
      ),
      child: Slider(
        value: sValue.toDouble(),
        min: 1,
        max: 5,
        onChanged: onChanged,
      ),
    );
  }
}
