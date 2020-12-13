import 'package:flutter/material.dart';
import 'homepage.dart';

class UniformLayout extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          
          title: Text('Dashboard'),
        
      ), // should be dynamic

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(Color.fromRGBO(254,250,250,1).withOpacity(0.2), BlendMode.dstATop),
              image: AssetImage("assets/images/heartsleeve_icon.png"),
              fit: BoxFit.scaleDown,
              //scale: 0.8,
          ),

          color: Color.fromRGBO(254,250,250,1),      

        ),
        child: HomePage(), //change to be dynamic

        constraints: BoxConstraints.expand()
      ),

      bottomNavigationBar: (

        BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/posts.png"),
              ),
              label: 'dashboard',
            ),

            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/write.png")
              ),
              label: 'write',
            ),

            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/discover.png")
              ),
              label: 'discover',
            ),

            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/bookmarked.png")
              ),
              label: 'bookmarks',
            ),

            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/profile.png")
              ),
              label: 'account',
            ),

          ],

          backgroundColor: Color.fromRGBO(106,65,98,1),
          selectedItemColor: Color.fromRGBO(243,157,182,1),
          unselectedItemColor: Color.fromRGBO(254,250,250,1),

          selectedFontSize: 11.0,
          unselectedFontSize: 11.0,

          type : BottomNavigationBarType.fixed
        
        )
      
      ),

    );
  } // build

}
