import 'package:GRSON/secondPages/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:GRSON/secondpages/theme/Theme.dart';
import 'package:GRSON/secondpages/widgets/drawer.dart';

// import '../loginpage/sigin_page.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class Elements extends StatefulWidget {
  // final UserDetails detailsUser;
  // ProfilePage({Key key, this.detailsUser}) : super(key: key);
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<Elements> {
  // final GoogleSignIn _googleSignIn = GoogleSignIn();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: Navbar(
        title: "Profile",
        transparent: true,
      ),
      drawer: ArgonDrawer(currentPage: "Elements"),
      body: new Stack(
        children: <Widget>[
          ClipPath(
            child: Container(color: Colors.blue),
            clipper: getClipper(),
          ),
          Positioned(
            width: 375.0,
            top: MediaQuery.of(context).size.height / 3.5,
            child: Column(
              children: <Widget>[
                Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1516559828984-fb3b99548b21?ixlib=rb-1.2.1&auto=format&fit=crop&w=2100&q=80"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(75.0)),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 7.2,
                            color: Colors.black,
                            spreadRadius: 0.2)
                      ]),
                ),
                SizedBox(height: 15.0),
                Text(
                  "Abdulrahman Alsarrani",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  "Abdulrahman.ALasrrani@gmail.com",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40.0),
                // Container(
                //   height: 40.0,
                //   width: 250.0,
                //   child: Material(
                //     borderRadius: BorderRadius.circular(20.0),
                //     shadowColor: ArgonColors.white,
                //     color: ArgonColors.white,
                //     elevation: 7.0,
                //     child: GestureDetector(
                //       onTap: () {
                //         Navigator.of(context).pop();
                //         Navigator.of(context).pushReplacementNamed('/homepage');
                //       },
                //       child: Center(
                //           child: Text(
                //         'Continue',
                //         style: TextStyle(
                //             color: Colors.black87,
                //             fontWeight: FontWeight.bold,
                //             fontSize: 20),
                //       )),
                //     ),
                //   ),
                // ),
                SizedBox(height: 40.0),
                // Container(
                //   height: 40.0,
                //   width: 250.0,
                //   child: Material(
                //     borderRadius: BorderRadius.circular(20.0),
                //     shadowColor: ArgonColors.white,
                //     color: ArgonColors.white,
                //     elevation: 7.0,
                //     child: GestureDetector(
                //       onTap: () {
                //         // _googleSignIn.signOut();
                //         // print('User Signed Out');
                //         // Navigator.of(context).pop();
                //         // FirebaseAuth.instance.signOut().then((value) {
                //         //   Navigator.of(context)
                //         //       .pushReplacementNamed('/landingpage');
                //         // }).catchError((e) {
                //         //   print(e);
                //         // });
                //       },
                //       child: Center(
                //           child: Text(
                //         'Log Out',
                //         style: TextStyle(
                //             color: Colors.black87,
                //             fontWeight: FontWeight.bold,
                //             fontSize: 20),
                //       )),
                //     ),
                //   ),
                // )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height / 2.0);
    path.lineTo(size.width + 480, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
