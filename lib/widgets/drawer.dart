import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://res.cloudinary.com/practicaldev/image/fetch/s---dVqf6Ma--/c_fill,f_auto,fl_progressive,h_320,q_auto,w_320/https://dev-to-uploads.s3.amazonaws.com/uploads/user/profile_image/334646/dd227f26-f054-437c-aaa5-47f3deb5e479.jpg";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountName: Text("Utkarsh Shekhar"),
                  accountEmail: Text("utki.619@gmail.com"),
                  currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(imageUrl),),
                )),
                ListTile(
                  leading: Icon(CupertinoIcons.home,color: Colors.white,),
                  title: Text("Home",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),),
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
                  title: Text("Profile",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),),
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.mail,color: Colors.white,),
                  title: Text("Email me",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),),
                )
          ],
        ),
      ),
    );
  }
}
