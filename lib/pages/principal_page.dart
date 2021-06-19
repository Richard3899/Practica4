import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PrincipalPage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),
          SafeArea(            
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  Cabecera(),    
                  Page1(),
                  Pages(),
                  Page2(),
                  Item1(),
                  Item2(),
                  Item3(),
                  Item4(),
                  Item5(),
                 
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor:Color.fromRGBO(255,255,255,1),
          
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.home,size:35,color:Colors.grey),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.search,size:35,color:Colors.grey),label: ''),
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.heart,size:35,color:Colors.indigoAccent.shade400),label: ''),
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.facebookMessenger,size:35,color:Colors.grey),label: ''),
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.user,size:35,color:Colors.grey),label: ''),
          ],
        ),
      ),
    );
  }
}

class Background extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final _screen = MediaQuery.of(context).size;

    final principal = Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          //begin: Alignment.topCenter,
          //end: Alignment.bottomCenter,
          begin: FractionalOffset(0,0.5),
          end: FractionalOffset(0,1),
          colors: [
            Color.fromRGBO(240, 240,240, 1),
            Color.fromRGBO(200, 200, 200, 1),
            
          ]
        )
      ),
    );
    final secondary = Transform.rotate(
      angle: -pi/6,
      child: Container(
        width: _screen.width * 0.7,
        height: _screen.width * 0.7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          color: Colors.grey.shade200
        ),
      )
    );

    return Stack(
      children: [
        principal,
        Positioned(top: 200, left: 50,child: secondary)
      ],
    );
  }
}

class Cabecera extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return  Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [

            Padding(
              padding: const EdgeInsets.all(15),
              child: Icon(Icons.menu, color: Colors.black, size: 30, ),
            ),

            Padding(
              padding: const EdgeInsets.all(15),
              child: Text('Kudos',textAlign:TextAlign.center,
              style: TextStyle(fontSize: 25, color: Colors.black, 
              fontWeight: FontWeight.bold)),
            ),
 
            Padding(
              padding: const EdgeInsets.all(15),
              child: Icon(FontAwesomeIcons.shopify, color: Colors.black, size: 30,),
            ),
              
          ],
        ),
      );
    
  }
}


class Page1 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
               Padding(
                 padding: const EdgeInsets.all(15),
                 child: Text('favourites',textAlign:TextAlign.center,
                 style: TextStyle(fontSize: 25, color: Colors.black,
                  fontWeight: FontWeight.bold)),
               ),
         
               Padding(
                 padding: const EdgeInsets.all(15),
                 child: Container(
                            child: 
                            MaterialButton(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                            color: Colors.indigoAccent.shade700,
                            child: Text('VIEW ALL',textAlign:TextAlign.center,
                            style: TextStyle(fontSize: 10, color: Colors.white,
                             fontWeight: FontWeight.bold)),
                            onPressed: () { },
                           ),
                           ),
               ),
      
        ],
      ),
    );
  }
}


class Page2 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
               Padding(
                 padding: const EdgeInsets.all(15),
                 child: Text('ALL',textAlign:TextAlign.center,
                 style: TextStyle(fontSize: 25, color: Colors.black,
                  fontWeight: FontWeight.bold)),
               ),
         
          
        ],
      ),
    );
  }
}


class Pages extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    return Container(
      height: _screen.width *0.3,
      width: double.infinity,
      child: 
      PageView(
        controller: PageController(
          viewportFraction: 0.69
        ),
      
        children: [
          PageView1(),
          PageView2()

      ],),
    );
  }
}
class PageView1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right:_screen.width *0.01,top:_screen.width *0.03),
      height: _screen.width *0.3,
      width: _screen.width *0.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            
              children: [
                
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:5,horizontal: 12 ),
                  child: Image(image: AssetImage('assets/img1.png')),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:1,horizontal: 12 ),
                  child: Text('Microwave Oven',style: TextStyle( color: Colors.black,
                      fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:5,horizontal: 12 ),
                  child: Text('Ready Wash Stainless',style: TextStyle( color: Colors.grey,fontSize: 10,
                      fontWeight: FontWeight.bold)),
                ),
              ],
              
            ),
 
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Icon(FontAwesomeIcons.paperPlane, color: Colors.indigoAccent.shade700, size: 25,),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Text('4.6',style: TextStyle(fontSize: 10, color: Colors.grey,
                      fontWeight: FontWeight.bold)),
                        ),
                        Icon(Icons.star, color: Colors.indigoAccent.shade700,size: 10,),
                        Icon(Icons.star, color: Colors.indigoAccent.shade700,size: 10,),
                        Icon(Icons.star, color: Colors.indigoAccent.shade700,size: 10,),
                        Icon(Icons.star, color: Colors.indigoAccent.shade700,size: 10,),
                        Icon(Icons.star, color: Colors.grey,size: 10,),
                      ],

                ),
              )
            ],
          ),
      
  
        ],
        
      ),
    
    );
  }
}

class PageView2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left:_screen.width *0.02,right:_screen.width *0.05,top:_screen.width *0.03),
      height: _screen.width *0.3,
      width: _screen.width *0.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            
              children: [
                
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:5,horizontal: 12 ),
                  child: Image(image: AssetImage('assets/img2.png')),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:1,horizontal: 12 ),
                  child: Text('Dryer Machine',style: TextStyle( color: Colors.black,
                      fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:5,horizontal: 12 ),
                  child: Text('Ready Wash Stainless',style: TextStyle( color: Colors.grey,fontSize: 10,
                      fontWeight: FontWeight.bold)),
                ),
              ],
              
            ),
 
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Icon(FontAwesomeIcons.paperPlane, color: Colors.indigoAccent.shade700, size: 25,),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Text('4.6',style: TextStyle(fontSize: 10, color: Colors.grey,
                      fontWeight: FontWeight.bold)),
                        ),
                        Icon(Icons.star, color: Colors.indigoAccent.shade700,size: 10,),
                        Icon(Icons.star, color: Colors.indigoAccent.shade700,size: 10,),
                        Icon(Icons.star, color: Colors.indigoAccent.shade700,size: 10,),
                        Icon(Icons.star, color: Colors.indigoAccent.shade700,size: 10,),
                        Icon(Icons.star, color: Colors.grey,size: 10,),
                      ],

                ),
              )
            ],
          ),
      
  
        ],
        
      ),
    
    );
  }
}


class Item1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left:_screen.width *0.05,right:_screen.width *0.05,top:_screen.width *0.03),
      height: _screen.width *0.25,
      width: _screen.width *0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:15),
            child: Image(image: AssetImage('assets/img3.png')),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Microwave Oven',style: TextStyle( color: Colors.black,
                    fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                    
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Text('4.6',style: TextStyle(fontSize: 10, color: Colors.grey,
                    fontWeight: FontWeight.bold)),
                      ),
                      Icon(Icons.star, color: Colors.indigoAccent.shade700,size: 10,),
                      Icon(Icons.star, color: Colors.indigoAccent.shade700,size: 10,),
                      Icon(Icons.star, color: Colors.indigoAccent.shade700,size: 10,),
                      Icon(Icons.star, color: Colors.indigoAccent.shade700,size: 10,),
                      Icon(Icons.star, color: Colors.grey,size: 10,),
                    ],
                  ),
              )
              
              ],
              
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(FontAwesomeIcons.ellipsisV, color: Colors.grey, size: 25,),
          ),
          
  
        ],
        
      ),
    
    );
  }
}



class Item2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    return Container(

      margin: EdgeInsets.only(left:_screen.width *0.05,right:_screen.width *0.05,top:_screen.width *0.03),
      height: _screen.width *0.25,
      width: _screen.width *0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:15),
            child: Image(image: AssetImage('assets/img4.png')),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Whisk',style: TextStyle( color: Colors.black,
                    fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                    
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Text('3.3',style: TextStyle(fontSize: 10, color: Colors.grey,
                    fontWeight: FontWeight.bold)),
                      ),
                      Icon(Icons.star, color: Colors.indigoAccent.shade700,size: 10,),
                      Icon(Icons.star, color: Colors.indigoAccent.shade700,size: 10,),
                      Icon(Icons.star, color: Colors.indigoAccent.shade700,size: 10,),
                      Icon(Icons.star, color: Colors.grey,size: 10,),
                      Icon(Icons.star, color: Colors.grey,size: 10,),
                    ],
                  ),
              )
              
              ],
              
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(FontAwesomeIcons.ellipsisV, color: Colors.grey, size: 25,),
          ),
          
  
        ],
        
      ),
    
    );
  }
}

class Item3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    return Container(

      margin: EdgeInsets.only(left:_screen.width *0.05,right:_screen.width *0.05,top:_screen.width *0.03),
      height: _screen.width *0.25,
      width: _screen.width *0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:15),
            child: Image(image: AssetImage('assets/img5.png')),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Speakers',style: TextStyle( color: Colors.black,
                    fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                    
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Text('4.6',style: TextStyle(fontSize: 10, color: Colors.grey,
                    fontWeight: FontWeight.bold)),
                      ),
                      Icon(Icons.star, color: Colors.indigoAccent.shade700,size: 10,),
                      Icon(Icons.star, color: Colors.indigoAccent.shade700,size: 10,),
                      Icon(Icons.star, color: Colors.indigoAccent.shade700,size: 10,),
                      Icon(Icons.star, color: Colors.indigoAccent.shade700,size: 10,),
                      Icon(Icons.star, color: Colors.grey,size: 10,),
                    ],
                  ),
              )
              
              ],
              
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(FontAwesomeIcons.ellipsisV, color: Colors.grey, size: 25,),
          ),
          
  
        ],
        
      ),
    
    );
  }
}

class Item4 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    return Container(

      margin: EdgeInsets.only(left:_screen.width *0.05,right:_screen.width *0.05,top:_screen.width *0.03),
      height: _screen.width *0.25,
      width: _screen.width *0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:15),
            child: Image(image: AssetImage('assets/img6.png')),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Air Conditioner',style: TextStyle( color: Colors.black,
                    fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                    
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Text('5.0',style: TextStyle(fontSize: 10, color: Colors.grey,
                    fontWeight: FontWeight.bold)),
                      ),
                      Icon(Icons.star, color: Colors.indigoAccent.shade700,size: 10,),
                      Icon(Icons.star, color: Colors.indigoAccent.shade700,size: 10,),
                      Icon(Icons.star, color: Colors.indigoAccent.shade700,size: 10,),
                      Icon(Icons.star, color: Colors.indigoAccent.shade700,size: 10,),
                      Icon(Icons.star, color: Colors.indigoAccent.shade700,size: 10,),
                    ],
                  ),
              )
              
              ],
              
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(FontAwesomeIcons.ellipsisV, color: Colors.grey, size: 25,),
          ),
          
  
        ],
        
      ),
    
    );
  }
}

class Item5 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    return Container(

      margin: EdgeInsets.only(left:_screen.width *0.05,right:_screen.width *0.05,top:_screen.width *0.03),
      height: _screen.width *0.25,
      width: _screen.width *0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:15),
            child: Image(image: AssetImage('assets/img7.png')),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Television',style: TextStyle( color: Colors.black,
                    fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                    
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Text('5.0',style: TextStyle(fontSize: 10, color: Colors.grey,
                    fontWeight: FontWeight.bold)),
                      ),
                      Icon(Icons.star, color: Colors.indigoAccent.shade700,size: 10,),
                      Icon(Icons.star, color: Colors.indigoAccent.shade700,size: 10,),
                      Icon(Icons.star, color: Colors.indigoAccent.shade700,size: 10,),
                      Icon(Icons.star, color: Colors.indigoAccent.shade700,size: 10,),
                      Icon(Icons.star, color: Colors.indigoAccent.shade700,size: 10,),
                    ],
                  ),
              )
              
              ],
              
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(FontAwesomeIcons.ellipsisV, color: Colors.grey, size: 25,),
          ),
          
  
        ],
        
      ),
    
    );
  }
}

