import 'package:flutter/material.dart';
import 'animations/fadeanimations.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:email_validator/email_validator.dart';
import 'forgot_password.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

final _auth=FirebaseAuth.instance;
final _firestore=FirebaseFirestore.instance;
final GoogleSignIn googleSignIn=GoogleSignIn();

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey=GlobalKey<FormState>();
  bool showSpinner=false;
  bool _isChecked=false;
  final emailController=TextEditingController();
  final passController=TextEditingController();
  String email,pass;

    bool _secureText=true;
  void toggle(){
    setState(() {
      _secureText=!_secureText;
    });
    
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeAnimation(2.0,ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(padding: EdgeInsets.all(10.0),
        child: Center(
         child: Form(
           key: _formKey,
           child:ListView(
             shrinkWrap: true,
             children:<Widget>[
               Center(child: Text('Welcome Back',style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold,fontSize: 30.0),)),
               SizedBox(height: 20.0,),
               Column(
                 children:<Widget>[
                   Text('Stay connected, be informed and keep',style: TextStyle(color:Colors.grey),),
                   Text('inspiring.',style: TextStyle(color:Colors.grey),),

                 ],
               ),
               SizedBox(height: 20.0,),
               TextFormField(
                              enableSuggestions: true,
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                              keyboardAppearance: Brightness.dark,
                              validator: (value){
                                      if(value.isEmpty){
                                        return "Enter your Email ID";
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
                                        labelText: "Email Address",
                                        border: const OutlineInputBorder(),
                                        
                                      ) ,


                            ),
                            SizedBox(height: 10.0,),
                            TextFormField(
                                     controller: passController,
                                     decoration: InputDecoration(
                                    labelText: "Password",
                                     suffixIcon: FlatButton(
                                       onPressed: (){
                                       setState(() {
                                         toggle();
                                       });
                                     }, child: Icon(Icons.remove_red_eye,color: Colors.black12,)),
                                      border: const OutlineInputBorder(),
                                      
                            
                                       ) ,
                                     validator: (value) => value.length < 6 ? 'Password too short.' : null,
                                     onChanged: (value){
                                       pass=value;
                                     },
                          
                                     obscureText: _secureText,
                                     ),
                                     SizedBox(height: 10.0,),
                                     Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right:5.0),
                      child: Checkbox(
                        value:_isChecked,
                        tristate: false,
                        onChanged: (bool isChecked) {
                          setState(() {
                          _isChecked = isChecked;
                        });
                      },
                          ),
                    ),
                      Text('Remember password',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left:5.0),
                  child: Material(
                    color: Colors.white.withOpacity(0.0),
                    child: InkWell(
                      child:Text('Forgot Password? ',style:TextStyle(color:Colors.black38)),
                      onTap:()=>Navigator.push(context, MaterialPageRoute(builder:(context)=>ForgotPassword())),
                    ),
                  ),
                ),
                SizedBox(height:10.0),
                Container(  
              width: double.infinity, 
              padding: const EdgeInsets.only(left:5.0,right:5.0),  
              child: RaisedButton(  
                 splashColor: Colors.lightBlueAccent,
                 elevation: 10.0,
                highlightElevation: 30.0,
                  child: const Text('LOGIN'), 
                  color: Colors.deepPurple[500],
                  textColor: Colors.white, 
                  onPressed: () async{

                    bool isUser;
                  UserCredential userCredential;
                  if(_formKey.currentState.validate()){
                    setState(() {
                      showSpinner=true;
                    });
                    try {
                      final user=await _auth.signInWithEmailAndPassword(email: email, password: pass);
                      print(user);
                      if(user!=null){
                        Navigator.pushNamed(context,"thanks");
                      }
                      

                      
                    }on FirebaseAuthException catch(e){
                    if(e.code=='user-not-found'){
                      isUser=false;
                    }
                    print('${e.code}');
                    } 
                    catch (e) {
                      print(e.toString());

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
          SizedBox(height:15.0),
          Padding(
            padding: const EdgeInsets.only(left:5.0),
            child: Row(
              children:<Widget>[
                Text('No account? ',style: TextStyle(color:Colors.grey),),
                Material(
                  color: Colors.white.withOpacity(0.0),
                  child: InkWell(
                    child:Text('Sign up now!',style:TextStyle(color:Colors.purple[700],fontSize: 15.0)),
                    onTap: ()=>Navigator.pushNamed(context,"signup"),
                  ),
                ),
                
                


              ],
            ),
          ),
          SizedBox(height: 15.0,),
          Padding(padding: EdgeInsets.only(left:5.0),child: Text('Login with',style:TextStyle(color:Colors.purple[700])),),
          SizedBox(height:10.0),
                Row(
                  children:<Widget>[
                   GestureDetector(
                     onTap: (){

                     },
                        child: Container(
                       height: 30.0,
                       child: FittedBox(
                         child: Image.asset('images/linkedin_logo.png',height:10.0,width: 10.0,),
                         
                       ),
                     ),
                   ),
                   SizedBox(width:8.0),
                   GestureDetector(
                     onTap: () async{

                        try {
                        final user= await _signInWithGoogle();
                        if(user!=null){
                          Navigator.pushNamed(context, "thanks");
                        }
                        
                        
                      }on FirebaseAuthException catch(e){
                        print('${e.code}');
                      }
                      catch (e) {
                        print(e.toString());
                      }

                       
                     },
                        child: Container(
                       height: 30.0,
                       child: FittedBox(
                         child: Image.asset('images/google_logo.png',height: 10.0,width: 10.0,),
                         
                       ),
                     ),
                   ),
                   SizedBox(width:8.0),
                   GestureDetector(
                     onTap: (){
                       
                     },
                        child: Container(
                       height: 30.0,
                       child: FittedBox(
                         child: Image.asset('images/facebook_logo.png',height: 10.0,width: 10.0,),
                         
                       ),
                     ),
                   ),
                    
                  ],
                ),



             ],
           )
           ), 
        ),),
      )),
    );
  }
}





Future<User> _signInWithGoogle() async{
  bool isSignedIn=await googleSignIn.isSignedIn();
  if(isSignedIn){
    final user= _auth.currentUser;
    return user;
  }else{
  final GoogleSignInAccount googleSignInAccount=await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication=await googleSignInAccount.authentication;

  final AuthCredential credential=GoogleAuthProvider.credential(
    accessToken: googleSignInAuthentication.accessToken,
    idToken: googleSignInAuthentication.idToken
  );

  final result =await _auth.signInWithCredential(credential);
  final User user=result.user;
  
  assert(!user.isAnonymous);
  assert(await user.getIdToken() !=null);

  final currentUser =_auth.currentUser;
  assert(currentUser.uid==user.uid);
  
  _firestore.collection("users").add({
    "name":currentUser.displayName,
    "email":currentUser.email
  });
  print(currentUser.email);
  
  return user;

  }

  

}