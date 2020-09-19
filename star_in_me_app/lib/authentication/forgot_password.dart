import 'package:flutter/material.dart';
import 'animations/fadeanimations.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';


final _auth=FirebaseAuth.instance;
class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formKey=GlobalKey<FormState>();
  bool showSpinner=false;
  String email;
  final emailController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeAnimation(2.0,ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(padding: EdgeInsets.all(15.0),
        child: Center(
          child:Form(
            key: _formKey,
            child: ListView(
              shrinkWrap: true,
              children:<Widget>[
                Text('Forgot Password',style: TextStyle(fontWeight:FontWeight.bold,fontSize:30.0,color:Colors.purple[800]),),
                SizedBox(height: 30.0,),
                Text('Enter your email address that you used to ',style: TextStyle(color:Colors.grey),),
                Text("register. We'll send you an email with a link to ",style: TextStyle(color:Colors.grey),),
                Text('reset your password. ',style: TextStyle(color:Colors.grey),),
                SizedBox(height:30.0),
                TextFormField(
                              enableSuggestions: true,
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                              keyboardAppearance: Brightness.dark,
                              validator: (value){
                                      if(value.isEmpty){
                                        return "Enter your registered Email ID";
                                      }
                                      else if(!EmailValidator.validate(value)){
                                        return "Enter a Valid Email ID";

                                      }
                                      return null;
                              },
                              onChanged: (value){
                                email=value;
                              },

                              decoration: InputDecoration(
                                        labelText: "Enter your registered email",
                                        border: const OutlineInputBorder(),
                                        
                                      ) ,


                            ),
                            SizedBox(height:20.0),
                            Container(  
              width: double.infinity, 
              padding: const EdgeInsets.only(left:5.0,right:5.0),  
              child: new RaisedButton(  
                 splashColor: Colors.lightBlueAccent,
                 elevation: 10.0,
                highlightElevation: 30.0,
                  child: const Text('SUBMIT'), 
                  color: Colors.deepPurple[500],
                  textColor: Colors.white, 
                  onPressed: (){
                    bool isUser=true;

                    if(_formKey.currentState.validate()){
                      try {
                        setState(() {
                          showSpinner=true;
                        });
                        _auth.sendPasswordResetEmail(email: email);
                        
                      }on FirebaseAuthException catch(e){
                    if(e.code=='user-not-found'){
                      isUser=false;
                    }
                    print('${e.code}');
                    } 
                      catch (e) {
                      }finally{
                      
                      setState(() {
                        showSpinner=false;
                      });
                      if(!isUser){
                        Navigator.pushNamed(context,"signup");
                      }
                    }
                    
                    }
                  },  
            )
          ),



                            SizedBox(height:20.0),
                            Material(
                  color: Colors.white.withOpacity(0.0),
                  child: InkWell(
                    child:Text('Back to login',style:TextStyle(color:Colors.purple[700])),
                    onTap: ()=>Navigator.pushNamed(context,"login"),
                  ),
                ),




              ]
            ),
          ),
        ),),
        

      )),
      
    );
  }
}