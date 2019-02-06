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
                    height: 200,
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
              height: 160,
              // color: Colors.pink,
              child: new GridView.count(
                padding: const EdgeInsets.all(20),
                crossAxisCount: 4,
                crossAxisSpacing: 20,
                children: <Widget>[
                  new Container(
                    child: Column(
                      children: <Widget>[
                        // Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1549421232877&di=b891bc0770d9382be1bd9c4fbdbbad15&imgtype=0&src=http%3A%2F%2Fimage.tupian114.com%2F20140424%2F09361709.png',width: 24,height: 24,fit: BoxFit.cover,alignment: Alignment.center,),
                        Image.asset('images/personalized.png',width: 20,height: 20,fit: BoxFit.cover,alignment: Alignment.center,),
                        Padding(padding: EdgeInsets.all(6.0),),
                        Text('内容一',textAlign: TextAlign.center),
                      ],
                    ),
                  
                  ),

                  new Container(
                    child: Column(
                      children: <Widget>[
                        // Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1549421232877&di=b891bc0770d9382be1bd9c4fbdbbad15&imgtype=0&src=http%3A%2F%2Fimage.tupian114.com%2F20140424%2F09361709.png',width: 24,height:24, fit: BoxFit.cover,alignment: Alignment.center,),
                        Image.asset('images/personalized.png',width: 20,height: 20,fit: BoxFit.cover,alignment: Alignment.center,),
                        Padding(padding: EdgeInsets.all(6.0),),
                        Text('内容二',textAlign: TextAlign.center),
                      ],
                    ),
                  
                  ),

                  new Container(
                    child: Column(
                      children: <Widget>[
                        // Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1549421232877&di=b891bc0770d9382be1bd9c4fbdbbad15&imgtype=0&src=http%3A%2F%2Fimage.tupian114.com%2F20140424%2F09361709.png',width: 24,height: 24,fit: BoxFit.cover,alignment: Alignment.center,),
                        Image.asset('images/personalized.png',width: 20,height: 20,fit: BoxFit.cover,alignment: Alignment.center,),
                        Padding(padding: EdgeInsets.all(6.0),),
                        Text('内容三',textAlign: TextAlign.center),
                      ],
                    ),
                  
                  ),

                  new Container(
                    child: Column(
                      children: <Widget>[
                        // Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1549421232877&di=b891bc0770d9382be1bd9c4fbdbbad15&imgtype=0&src=http%3A%2F%2Fimage.tupian114.com%2F20140424%2F09361709.png',width: 24,height: 24,fit: BoxFit.cover,alignment: Alignment.center,),
                        Image.asset('images/personalized.png',width: 20,height: 20,fit: BoxFit.cover,alignment: Alignment.center,),
                        Padding(padding: EdgeInsets.all(6.0),),
                        Text('内容四',textAlign: TextAlign.center),
                      ],
                    ),
                  
                  ),
 

                  new Container(
                    child: Column(
                      children: <Widget>[
                        // Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1549421232877&di=b891bc0770d9382be1bd9c4fbdbbad15&imgtype=0&src=http%3A%2F%2Fimage.tupian114.com%2F20140424%2F09361709.png',width: 24,height: 24,fit: BoxFit.cover,alignment: Alignment.center,),
                        Image.asset('images/personalized.png',width: 20,height: 20,fit: BoxFit.cover,alignment: Alignment.center,),
                        Padding(padding: EdgeInsets.all(6.0),),
                        Text('内容一',textAlign: TextAlign.center),
                      ],
                    ),
                  
                  ),

                  new Container(
                    child: Column(
                      children: <Widget>[
                        // Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1549421232877&di=b891bc0770d9382be1bd9c4fbdbbad15&imgtype=0&src=http%3A%2F%2Fimage.tupian114.com%2F20140424%2F09361709.png',width: 24,height:24, fit: BoxFit.cover,alignment: Alignment.center,),
                        Image.asset('images/personalized.png',width: 20,height: 20,fit: BoxFit.cover,alignment: Alignment.center,),
                        Padding(padding: EdgeInsets.all(6.0),),
                        Text('内容二',textAlign: TextAlign.center),
                      ],
                    ),
                  
                  ),

                  new Container(
                    child: Column(
                      children: <Widget>[
                        // Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1549421232877&di=b891bc0770d9382be1bd9c4fbdbbad15&imgtype=0&src=http%3A%2F%2Fimage.tupian114.com%2F20140424%2F09361709.png',width: 24,height: 24,fit: BoxFit.cover,alignment: Alignment.center,),
                        Image.asset('images/personalized.png',width: 20,height: 20,fit: BoxFit.cover,alignment: Alignment.center,),
                        Padding(padding: EdgeInsets.all(6.0),),
                        Text('内容三',textAlign: TextAlign.center),
                      ],
                    ),
                  
                  ),

                  new Container(
                    child: Column(
                      children: <Widget>[
                        // Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1549421232877&di=b891bc0770d9382be1bd9c4fbdbbad15&imgtype=0&src=http%3A%2F%2Fimage.tupian114.com%2F20140424%2F09361709.png',width: 24,height: 24,fit: BoxFit.cover,alignment: Alignment.center,),
                        Image.asset('images/personalized.png',width: 20,height: 20,fit: BoxFit.cover,alignment: Alignment.center,),
                        Padding(padding: EdgeInsets.all(6.0),),
                        Text('内容四',textAlign: TextAlign.center),
                      ],
                    ),
                  
                  ),
 

                  

                ],

              ),
            ),

            Container(
              padding: EdgeInsets.only(left: 20.0),
              child:Text('今日推荐',style: TextStyle(color: Colors.black,fontSize: 24,letterSpacing: 2.0,fontWeight: FontWeight.bold)), 
            ),


            
            Padding(padding: EdgeInsets.only(top: 6.0,bottom: 6.0),),

            Container(
              width: 375,
              height: 180,
              padding: EdgeInsets.only(left:20.0,right: 20.0),
              // color: Colors.red,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 180,
                    height: 180,
              
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      image: DecorationImage(
                        image: NetworkImage('http://www.deskier.com/uploads/allimg/160817/1-160QH13515.jpg'),
                        fit: BoxFit.cover,

                      ),
                    ),
                    // color: Colors.black54,
                    
                  ),

                  Container(
                    width: 195,
                    height: 180,
                    // padding: EdgeInsets.all(6.0),
                    // color: Colors.orangeAccent,
                    child: Column(
                      // scrollDirection: Axis.vertical,
                      
                      children: <Widget>[
                        
                        Container(
                          width: 175,
                          height: 88,
                          margin: EdgeInsets.only(bottom: 4.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(4.0)),
                            image: DecorationImage(
                              image: NetworkImage('http://attachments.gfan.com/forum/201503/14/02541368qtpd7hqddp43np.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),

                        
                        ),

                        Container(
                          width: 175,
                          height: 88,
                           decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(4.0)),
                            image: DecorationImage(
                              
                              image: NetworkImage('http://b.zol-img.com.cn/desk/bizhi/image/4/1920x1080/1395366007267.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),

                          
                        ),
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