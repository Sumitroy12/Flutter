import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var imageUrl =
        "https://lh3.googleusercontent.com/-WQjWp_czNd4/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucnWGoNCevwr_OD7LHBsUIVdbEgy5A/photo.jpg?sz=70";
    var imageUrl1 =
        "https://www.rcmbusiness.com/DefaultCaptcha/Generate?t=99491489500741d8bc7bf739fcc4677d&_multiple_=0";
    return Drawer(
      child: Container(
        color: Colors.green,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                // margin: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                    accountName: Text("Sumit Roy"),
                    accountEmail: Text("rsumit@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(imageUrl),
                      // backgroundImage: NetworkImage(imageUrl1),
                    )
                    // Image.network(imageUrl),  this gives image directly but if we want circular image see the uncommented code
                    )),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white),
              title: Text("Home",
                  textScaleFactor: 1.3, style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading:
                  Icon(CupertinoIcons.profile_circled, color: Colors.white),
              title: Text("Profile",
                  textScaleFactor: 1.3, style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.white),
              title: Text("Email",
                  textScaleFactor: 1.3, style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
