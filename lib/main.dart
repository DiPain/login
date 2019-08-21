import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        body: loginPage(),
      )
    );
  }

  Widget loginPage()=>Container(
    decoration: BoxDecoration(
      color: Colors.deepPurple
    ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: 
      Column(
        children: <Widget>[
          SizedBox(height: 30,),
          Row(
            children: <Widget>[
              Expanded(child: Text(''),),
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),              
            ],
          ),
          SizedBox(height: 80,),
          
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.hd,
                  color: Colors.white,
                  size: 40,
                  ),
                Text(
                  'Hexagon',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
              ],
            ),              
          
          SizedBox(height: 100,),

          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(   
                borderSide: BorderSide.none,             
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                )
              ),
              hintText: '   user name',
              fillColor: Colors.white,
              filled: true,                            
            ),
          ),

          SizedBox(height: 20,),
          TextField(
           decoration: InputDecoration(
              border: OutlineInputBorder(   
                borderSide: BorderSide.none,             
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                )
              ),
              hintText: '   Password',
               fillColor: Colors.white,
              filled: true,   
            ),
          ),

          SizedBox(height: 90,),
          Container(
            width: double.infinity,
            height: 40,
            child:FlatButton(
              child: Text('L o g i n',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),),
              color: Colors.red[300],
              onPressed: (){},
              shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(50)),
              
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Dont have an account.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              Text('Sign up',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.white,
                  fontSize: 15
                ),
              ),

            ],
          ),
          
          SizedBox(height: 60 ,),
          Text(
            'Login with Social Network',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.face),
                onPressed: (){},
                color: Colors.white,
                iconSize: 35,
              ),

              IconButton(
                icon: Icon(Icons.video_call),
                onPressed: (){},
                color: Colors.white,
                iconSize: 35,
              ),

              IconButton(
                icon: Icon(Icons.aspect_ratio),
                onPressed: (){},
                color: Colors.white,
                iconSize: 35,
              ),
            ],
          )
        ],
      ),
    ),
  );
}
