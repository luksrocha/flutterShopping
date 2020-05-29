import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.white.withOpacity(0),
        elevation: 0,
        ),
      body:SingleChildScrollView(
        child:Container(
          padding: EdgeInsets.only(
            top:80,
            left:20,
            right:20,
            bottom:40
          ),
          child: Column(
            children:<Widget>[
               Container(
                height:470,
                decoration: BoxDecoration(
                  color:Theme.of(context).accentColor,
                  boxShadow: [ BoxShadow(
                    color:Colors.black12,
                    offset: Offset(1, 3.0),
                    blurRadius: 5,
                    spreadRadius: 5
                    )
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(left:15,right:15,top:60),
                  child:Column(
                    children:<Widget>[
                      Container(
                        width:double.infinity,
                        child: Text('Signup',
                        style:TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color:Theme.of(context).primaryColor
                          )
                        ),
                      ),
                      SizedBox(height:60),
                      TextFormField(
                        //autofocus:true,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: 'Nome',
                          labelStyle: TextStyle(
                            color:Theme.of(context).primaryColor,
                            fontWeight:FontWeight.w400,
                            fontSize:16,
                          )
                        ),
                        style:TextStyle(
                          fontSize: 20
                        )
                      ),
                      SizedBox(height:10),

                      TextFormField(
                        //autofocus:true,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            color:Theme.of(context).primaryColor,
                            fontWeight:FontWeight.w400,
                            fontSize:16,
                          )
                        ),
                        style:TextStyle(
                          fontSize: 20
                        )
                      ),
                      SizedBox(height:10),

                      TextFormField(
                        //autofocus:true,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color:Theme.of(context).primaryColor,
                            fontWeight:FontWeight.w400,
                            fontSize:16,
                          )
                        ),
                        style:TextStyle(
                          fontSize: 20
                        )
                      ),
                      SizedBox(height:30),
                      Container(
                        height:45,
                        width:double.infinity,
                        decoration: BoxDecoration(
                        color:Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(5))
                        ),
                        child: FlatButton(
                          onPressed: (){}, 
                          child: Text('Sign up', style:TextStyle(color:Theme.of(context).accentColor, fontSize:15))
                        ),
                      )
                    ]
                  )
                )
               )
            ] 
          ),
        )
      )
    );
  }
}