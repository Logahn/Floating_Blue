import "package:flutter/material.dart";
import 'package:paytrybe_app/my_flutter_app_icons.dart';
import 'package:paytrybe_app/screens/authenticate/authenticate.dart';
import 'package:paytrybe_app/screens/authenticate/register.dart';
import 'package:paytrybe_app/screens/authenticate/sign_in.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  PageController pageController = PageController();
  // List<Widget> pages = [Home(), Convert(), History()];

  List<Widget> pages = [Home(), SignIn(), Register()];
  int selectIndex = 0;

  void onPageChanged(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  void onItemTap(int selectedItems) {
    pageController.jumpToPage(selectedItems);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: pageController,
          children: pages,
          onPageChanged: onPageChanged,
        ),
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          title: Image.asset('images/paytrybe_logo.png', fit: BoxFit.cover),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 5, 71, 125),
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
              icon: const Icon(Icons.person, color: Colors.white),
              label: Text('Profile', style: TextStyle(color: Colors.white)),
              onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Authenticate(),
                  ),
                );
              },
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 5, 71, 125),
          onTap: onItemTap,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home_filled,
                  color: selectIndex == 0 ? Colors.blue[200] : Colors.white),
            ),
            BottomNavigationBarItem(
              label: 'Convert Money',
              icon: Icon(Icons.currency_exchange_sharp,
                  color: selectIndex == 1 ? Colors.blue[200] : Colors.white),
            ),
            BottomNavigationBarItem(
              label: 'History',
              icon: Icon(Icons.history,
                  color: selectIndex == 2 ? Colors.blue[200] : Colors.white),
            ),
          ],
        )
        //   items: const [
        //     BottomNavigationBarItem(
        //         label: 'Home',
        //         icon: Icon(Icons.home_filled, color: Colors.white)),
        //     BottomNavigationBarItem(
        //         label: 'Convert Money',
        //         icon: Icon(Icons.currency_exchange_sharp, color: Colors.white)),
        //     BottomNavigationBarItem(
        //         label: 'History', icon: Icon(Icons.history, color: Colors.white))
        //   ],
        // ),
        );
  }

  void setState(Null Function() param0) {}
}

class LogoImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/paytrybe_logo.png');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
    );
  }
}
