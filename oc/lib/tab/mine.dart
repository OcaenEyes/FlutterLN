import 'package:flutter/material.dart';

class MinePageWidget extends StatefulWidget {
  @override
  _MinePageWidgetState createState() => _MinePageWidgetState();
}

class _MinePageWidgetState extends State<MinePageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('我的'),),
      body: ListView(
          children: <Widget>[

            new Container(
              width: 335,
              height:160 ,
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.all(20.0),
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                gradient: LinearGradient(colors: [Colors.black87,Colors.black]),
              ),
              child: new Row(
                children: <Widget>[
                  new Container(
                      width: 56,
                      height: 56,
                      margin: EdgeInsets.only(left: 20.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(28)),
                        color: Colors.white,
                      ),
                    ),

                    new Column(
                    
                      children: <Widget>[
                        Container(
                          width: 140,
                          // color: Colors.black,
                          padding: EdgeInsets.only(left: 20.0),
                          margin: EdgeInsets.only(top: 26.0,left: 68.0),
                          alignment: Alignment.centerLeft,
                          child: Text('啦啦啦',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 22)),
                        ),
                        
                        Padding(padding: EdgeInsets.all(8.0),),

                        Container(
                          width: 140,
                          // color: Colors.black,
                          padding: EdgeInsets.only(left: 20.0),
                          margin: EdgeInsets.only(left: 68.0),
                          alignment: Alignment.centerLeft,
                          child: Text('备注备注备注',style: TextStyle(color:Colors.white,),),
                        ),


                      ],

                  ),

 
                                     

                ],
              ),

            ),


            new ListTile(
              title: Text('条目一'),
              leading: Icon(Icons.pages),
              trailing: Text('说明一'),
            ),

            new ListTile(
              title: Text('条目一'),
              leading: Icon(Icons.pages),
              trailing: Text('说明一'),
            ),

            new ListTile(
              title: Text('条目一'),
              leading: Icon(Icons.pages),
              trailing: Text('说明一'),
            ),

            new ListTile(
              title: Text('条目一'),
              leading: Icon(Icons.pages),
              trailing: Text('说明一'),
            ),


            new ListTile(
              title: Text('条目一'),
              leading: Icon(Icons.pages),
              trailing: Text('说明一'),
            ),

          ],
          
        ),

        
    );
  }
}