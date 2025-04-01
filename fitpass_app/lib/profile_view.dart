import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});
  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // Upper Portion
            Container(
              height: MediaQuery.of(context).size.height * 0.185, // 0.2 za Iphone 14 pro // aca 0.185
              color: Color(0xFF1d1b29),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 10, right: 20), // Iphone 14 ide 20 
                        child: CircleAvatar(
                          radius: 40.0,
                          backgroundImage: AssetImage('assets/user.jpg'), // user.jpg
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding:
                                  EdgeInsets.only(left: 0, top: 15, right: 0)),
                          Text(
                            'Milica Kantar',  //Milica Kantar
                            style: TextStyle(
                                fontSize: 18.0,
                                fontFamily: 'Lexend',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFfdfcff)),
                          ),
                          // SizedBox(height: 4.0),
                          Text(
                            'milicakantar98@gmail.com', // 'milicakantar98@gmail.com'
                            style: TextStyle(
                                fontSize: 14.0,
                                fontFamily: 'Lexend',
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFfdfcff)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                          padding:
                              EdgeInsets.only(left: 0, top: 65, right: 0)),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'VC1350238',
                            style: TextStyle(
                                fontSize: 14.5,
                                color: Colors.white,
                                fontFamily: 'Lexend',
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Account ID',
                            style: TextStyle(
                                fontSize: 14.5,
                                color: Colors.white,
                                fontFamily: 'Lexend',
                                fontWeight: FontWeight.w100),
                          ),
                        ],
                      ),
                          SizedBox(width: 50), // Add space between columns

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Premium',
                            style: TextStyle(
                                fontSize: 14.5,
                                color: Colors.white,
                                fontFamily: 'Lexend',
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Membership',
                            style: TextStyle(
                                fontSize: 14.5,
                                color: Colors.white,
                                fontFamily: 'Lexend',
                                fontWeight: FontWeight.w100),
                          ),
                        ],
                      ),
                          SizedBox(width: 50), // Add space between columns

                       Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Active',
                            style: TextStyle(
                                fontSize: 14.5,
                                color: Colors.white,
                                fontFamily: 'Lexend',
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Status',
                            style: TextStyle(
                                fontSize: 14.5,
                                color: Colors.white,
                                fontFamily: 'Lexend',
                                fontWeight: FontWeight.w100),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Rest of the ProfileView content
            Expanded(
              child: Center(
                child: Image(
                  image: AssetImage('assets/profileNew.jpg'),
                  fit: BoxFit.fill,
                  width: double.infinity,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
