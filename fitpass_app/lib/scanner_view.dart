import 'package:fitpass_app/camera_tab.dart';
import 'package:fitpass_app/home_view.dart';
import 'package:fitpass_app/main.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// ignore: unused_import
import 'package:camera/camera.dart';

class ScannerView extends StatefulWidget {
  const ScannerView({Key? key}) : super(key: key);

  @override
  State<ScannerView> createState() => _ScannerViewState();
}

class _ScannerViewState extends State<ScannerView> {
  bool passedQRVerification = false;
  bool buttonVisible = true;


  void _handleButtonClick() {
    setState(() {
      passedQRVerification = true;
      buttonVisible = false;
    });
  }


  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('dd.MM.yyyy').format(now);
    String formattedTime = DateFormat('HH:mm').format(now);

    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Color(0xFF1d1b29),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (passedQRVerification)
                  Padding(
                    // padding: EdgeInsets.all(60.0),
                    padding: EdgeInsets.only(
                        left: 40, top: 70, right: 40, bottom: 100),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 120,
                              height: 90,
                              decoration: BoxDecoration(
                                  // shape: BoxShape.circle,
                                  // color: Color(0xFF1d1b29),
                                  ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              // width: 200,
                              // height: 100,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 1.5),
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xFF1d1b29),
                              ),
                              child: CheckInWIdget(formattedDate: formattedDate, formattedTime: formattedTime,),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 0, // Adjust this value to move the image down
                          child: CircleAvatar(
                            radius: 70.0,
                            backgroundImage: AssetImage('assets/opa.jpeg'),
                          ),
                        ),
                      ],
                    ),
                  )
                else

                  // THIS IS the place where i want to user camera
                  // Image(
                  //   image: AssetImage('assets/profile.jpg'),
                  //   fit: BoxFit.cover,
                  //   width: double.infinity,
                  // ),
                  // SizedBox(height: 20),


                  Column(
                    children: [
                      CameraTab(),
                      Visibility(
                        visible: buttonVisible,
                        child: ElevatedButton(
                            onPressed: _handleButtonClick,
                            child: Text(''),
                            style: ElevatedButton.styleFrom(                      
                                padding: EdgeInsets.all(0),
                                minimumSize: Size(double.infinity, 40),
                                backgroundColor: Color(0xFF1d1b29), elevation: 0)),
                      ),
                    ],
                  ),



                if (passedQRVerification)
                  // Positioned(
                  //   // bottom: 170,
                  //   child:
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.85,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) =>MyApp()));
                        }, 
                        child: Text('OK'),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFe4441d),
                            foregroundColor: Colors.white,
                            minimumSize: Size(double.infinity, 40),
                            textStyle: TextStyle(
                                fontSize: 13.0,
                                fontFamily: 'Lexend',
                                fontWeight: FontWeight.bold),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            elevation: 25),
                      ),
                    // ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}





class CheckInWIdget extends StatelessWidget {
  const CheckInWIdget({
    super.key,
    required this.formattedDate,
    required this.formattedTime,
  });

  final String formattedDate;
  final String formattedTime;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 45),
          child: Text(
            'Successful Check in!',
            style: TextStyle(
              fontSize: 17.0,
              fontFamily: 'Lexend',
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: 20,
                  top: 25,
                  right: 15,
                  bottom: 25),
              child: CircleAvatar(
                radius: 35.0,
                backgroundImage:
                    AssetImage('assets/user.jpg'), //user.jpg
              ),
            ),
            Column(
              mainAxisAlignment:
                  MainAxisAlignment.start,
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.only(
                        left: 0,
                        top: 0,
                        right: 0,
                        bottom: 0)),
                Text(
                  'Milica Kantar',  //Milica Kantar
                  style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment:
                  MainAxisAlignment.center,
              crossAxisAlignment:
                  CrossAxisAlignment.center,
              children: [
                Text(
                  'Blue Line Fitness-Wellnes-Gym',
                  style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        left: 0,
                        top: 10,
                        right: 0,
                        bottom: 10)),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: 0,
                  top: 5,
                  right: 0,
                  bottom: 20),
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.start,
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    'Date of check in:',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.white,
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Time of check in:',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.white,
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 70,
                  top: 5,
                  right: 0,
                  bottom: 20),
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.start,
                crossAxisAlignment:
                    CrossAxisAlignment.end,
                children: [
                  Text(
                    formattedDate,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    formattedTime,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(home: ScannerView()));
}
