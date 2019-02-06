import 'package:flutter/material.dart';

class HomePageWidget extends StatefulWidget {
  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: new ListView(
          children: <Widget>[

            Container(
              width: 375,
              height: 200,
              padding: const EdgeInsets.only(top: 10,bottom: 10),
              
              // color: Colors.yellow,
              child: new ListView(
                
                scrollDirection: Axis.horizontal,
                
                children: <Widget>[
                  Container(
                  
                    width: 335,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('http://www.deskier.com/uploads/allimg/160817/1-160QH13515.jpg'),
                        
                        fit: BoxFit.cover,

                    ),
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),                                        
                    ),
                    
                    margin: const EdgeInsets.only(left: 20,right: 20),
                  
                    // color: Colors.blueAccent,
                  ),

                  Container(
                    width: 335,
                    height: 200,
                    margin: const EdgeInsets.only(left: 20,right: 20),
                    // padding: const EdgeInsets.only(top: 8,bottom:8,left: 18),
                    // color: Colors.blue,

                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('http://b.zol-img.com.cn/desk/bizhi/image/4/1920x1080/1395366007267.jpg'),
                     
                        fit: BoxFit.cover,

                    ),
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),                                        
                    ),

                  ),

                  Container(
                    width: 335,
                    height: 240,
                    margin: const EdgeInsets.only(left: 20,right: 20),
                    // padding: const EdgeInsets.only(top: 8,bottom:8,left: 18),
                    // color: Colors.green,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('http://attachments.gfan.com/forum/201503/14/02541368qtpd7hqddp43np.jpg'),
                        
                        fit: BoxFit.cover,

                    ),
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),                                        
                    ),

                  ),


                ],
              ),
            ),

            Container(
              width: 375,
              height: 80,
              // color: Colors.pink,
              child: new GridView.count(
                padding: const EdgeInsets.all(20),
                crossAxisCount: 4,
                crossAxisSpacing: 20,
                children: <Widget>[
                  new Container(
                    child: Column(
                      children: <Widget>[
                        Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1549421232877&di=b891bc0770d9382be1bd9c4fbdbbad15&imgtype=0&src=http%3A%2F%2Fimage.tupian114.com%2F20140424%2F09361709.png',width: 24,height: 24,fit: BoxFit.cover,alignment: Alignment.center,),
                        
                        Text('一',),
                      ],
                    ),
                  
                  ),

                  new Container(
                    child: Column(
                      children: <Widget>[
                        Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1549421232877&di=b891bc0770d9382be1bd9c4fbdbbad15&imgtype=0&src=http%3A%2F%2Fimage.tupian114.com%2F20140424%2F09361709.png',width: 24,height:24, fit: BoxFit.cover,alignment: Alignment.center,),
                        
                        Text('二'),
                      ],
                    ),
                  
                  ),

                  new Container(
                    child: Column(
                      children: <Widget>[
                        Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1549421232877&di=b891bc0770d9382be1bd9c4fbdbbad15&imgtype=0&src=http%3A%2F%2Fimage.tupian114.com%2F20140424%2F09361709.png',width: 24,height: 24,fit: BoxFit.cover,alignment: Alignment.center,),
                        Text('三',),
                      ],
                    ),
                  
                  ),

                  new Container(
                    child: Column(
                      children: <Widget>[
                        Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1549421232877&di=b891bc0770d9382be1bd9c4fbdbbad15&imgtype=0&src=http%3A%2F%2Fimage.tupian114.com%2F20140424%2F09361709.png',width: 24,height: 24,fit: BoxFit.cover,alignment: Alignment.center,),
                        Text('四'),
                      ],
                    ),
                  
                  ),
 


                  

                ],

              ),
            ),

          ],

        ),
  
      ),
    );
  }
}