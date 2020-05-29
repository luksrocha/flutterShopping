import 'package:flutter/material.dart';
import 'package:shoppingbasics/pages/signup.page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            top:80,
            left:20,
            right:20,
            bottom:40
          ),
          child: Column(
            children: <Widget>[
              Container(
                height:415,
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
                child:Padding(
                  padding: const EdgeInsets.only(left:15, right:15, top:45),
                  child: Column(
                    children:<Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:<Widget>[
                          Column(children: <Widget>[
                              Text('Welcome', style:TextStyle(
                          fontSize:30,
                          fontWeight: FontWeight.w500,
                        )
                      ),
                      Text('Sign in to continue'),
                            ],
                          ),
                          FlatButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SignupPage())
                              );
                            }, 
                            child: Text('Sign up',
                            style:TextStyle(
                                color:Theme.of(context).primaryColor
                              )
                            )
                          )
                        ]
                      ),
                      SizedBox(height:50),
                      TextFormField(
                        // autofocus:true,
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
                        keyboardType: TextInputType.emailAddress,
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
                      Container(
                        height:40,
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                          onPressed: (){}, 
                          child: Text('Forgot your password?',
                            style:TextStyle(
                              color:Theme.of(context).primaryColor
                            )
                          )
                        ),
                      ),
                      SizedBox(height:10),
                      Container(
                        height:45,
                        width:double.infinity,
                        decoration: BoxDecoration(
                        color:Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(5))
                        ),
                        child: FlatButton(
                          onPressed: (){
                          }, 
                          child: Text('Sign in', style:TextStyle(color:Theme.of(context).accentColor, fontSize:15))
                        ),
                      )
                    ]
                  ),
                )
              ),
              Container(
                padding:EdgeInsets.only(top:15, bottom:15),
                child: Text(
                  '- OR -',
                  style:TextStyle(
                    fontSize:14,
                    fontWeight:FontWeight.w300
                  )
                )
              ),
              Container(
                width:double.infinity,
                height:60,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color:Theme.of(context).primaryColor,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                child:FlatButton(
                  onPressed: (){}, 
                  child: Row(
                    children: <Widget>[
                      Container(
                        height:24,
                        width:100,
                        child: Image.asset('assets/facebook.png')),
                      Text('Log in with Facebook')
                    ],
                  )
                )
              ),
              SizedBox(height:15),
              Container(
                width:double.infinity,
                height:60,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color:Theme.of(context).primaryColor,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                child:FlatButton(
                  onPressed: (){}, 
                  child: Row(
                    children: <Widget>[
                      Container(
                        height:24,
                        width:100,
                        child: Image.asset('assets/google.png')),
                      Text('Log in with Google')
                    ],
                  )
                )
              )
            ],
          ) ,
        ),
      ),
    );
  }
}