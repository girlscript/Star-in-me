import 'package:flutter/material.dart';
import 'package:star_in_me_app/Posts/createpost.dart';
import 'package:star_in_me_app/components/header.dart';
import 'package:intl/intl.dart';


import 'PostModel.dart';
class PostPage extends StatefulWidget{
  static final String postPageId = '/postPage';
  @override
  State<StatefulWidget> createState() {
    return _PostPage();
  }
}
List<PostModel> posts = [PostModel("123456","This is the title for the post", "This is the description which user provides for given post. this may be a bit longer as well", null, null, null, null, false, [1,0], null,null, "Pragya Gupta", "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50",0,[],0,DateTime.now())];
List<bool> liked = [false];
List<bool> comments = [false];
List<bool> elapsed = [false];
List<bool> menu = [false];
class _PostPage extends State<PostPage>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: Header(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text("Top Picks",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5,right: 5,top: 10,bottom: 20),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: SizedBox(),
                            ),
                            Icon(Icons.edit,color: Colors.black,size: 10),
                            SizedBox(
                              width: 5,
                            ),
                            Text('Create Post',style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),),
                            Expanded(
                              child: SizedBox(),
                            ),
                            Expanded(
                              child: SizedBox(),
                            ),
                            Icon(Icons.info_outline,color: Colors.black,size: 10),
                            SizedBox(
                              width: 5,
                            ),
                            Text('Ask Question',style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),),
                            Expanded(
                              child: SizedBox(),
                            ),
                            Expanded(
                              child: SizedBox(),
                            ),
                            Icon(Icons.subject,color: Colors.black,size: 10),
                            SizedBox(
                              width: 5,
                            ),
                            Text('Create Poll',style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),),
                            Expanded(
                              child: SizedBox(),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: GestureDetector(
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: Row(
                              children: [
                                Padding(padding: EdgeInsets.all(10),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  child: Image.asset("images/UI1.png"),
                                ),),
                                Padding(padding: EdgeInsets.all(10),child: Text("What's on your mind?",),)
                              ],
                            ),
                          ),
                          onTap: () async {
                            var newpost = await Navigator.push(context,MaterialPageRoute(builder: (context)=>CreatePost()));
                            if(newpost!=null)
                            posts.insert(0, newpost);
                            print(posts.toString());
                            liked.insert(0,false);
                            comments.insert(0,false);
                            elapsed.insert(0,false);
                            menu.insert(0, false);
                            setState((){
                            });
                            },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(child: Container(
                    height: 1,
                    color: Colors.grey.shade400,
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(padding: EdgeInsets.all(10),child: Text("RECENT",style: TextStyle(fontWeight: FontWeight.bold),),),
                  Padding(padding: EdgeInsets.all(10),child: Text("TOP PICKS"),),
                ],
              ),
              Column(
                children: posts.map((e) => PostCard(e)).toList(),
              )
            ],
          ),
        )
      ),
    );
  }
  Widget PostCard(PostModel post){
    return Padding(
      padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
      child: Container(
       width: MediaQuery.of(context).size.width-20,
       decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.circular(5),
         border: Border.all(color: Colors.grey.shade400)
       ),
        child: Column(
          children: [
            (post.anonymous)?ListTile(
              contentPadding: EdgeInsets.only(left: 20,right: 20,top: 20),
              title: Text("Anonymous User",style: TextStyle(color: Colors.deepPurple),),
              subtitle: Text(DateFormat.yMMMMd().format(post.date),style: TextStyle(fontSize: 14),),
              leading: CircleAvatar(radius: 30,child: ClipOval(
                child: Image.asset("images/UI1.png",fit: BoxFit.fill),
              ),
              ),
              trailing: GestureDetector(
                child: Icon(Icons.more_vert),
                onTap: (){
                  setState(() {
                    menu[posts.indexOf(post)]=!menu[posts.indexOf(post)];
                  });
                },
              ),
            ):ListTile(
              contentPadding: EdgeInsets.only(left: 20,right: 20,top: 20),
              title: Text(post.username,style: TextStyle(color: Colors.deepPurple),),
              subtitle: Text(DateFormat.yMMMMd().format(post.date),style: TextStyle(fontSize: 14),),
              leading: CircleAvatar(radius: 30,child: ClipOval(
                child: Image.network(post.userdp,fit: BoxFit.fill,),
              ),
              ),
              trailing: GestureDetector(
                child: Icon(Icons.more_vert),
                onTap: (){
                  setState(() {
                    menu[posts.indexOf(post)]=!menu[posts.indexOf(post)];
                  });
                },
              ),
            ),
            (menu[posts.indexOf(post)])?Align(alignment: Alignment.centerRight,child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ReportPost()));
                },
                child: Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text("Report Post"),
                    ),
                  ),
                )
            ),):Container(),
            (post.labels!=null)?Wrap(
              children: post.labels.map((e) => LabelChip(e)).toList(),
            ):Container(),
            Padding(padding: EdgeInsets.only(left: 20,right: 20,top: 10),child: Text(post.title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
            (post.description.length>200)?Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20,right: 20,top: 30),
                    child: Text((elapsed[posts.indexOf(post)])?post.description:post.description.substring(0,199),style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),)
                  ),
                (!elapsed[posts.indexOf(post)])?GestureDetector(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Text("Read More",style: TextStyle(color: Colors.deepPurple),),
                    ),
                    onTap: (){
                      setState(() {
                        int index = posts.indexOf(post);
                        elapsed[index]=true;
                      });
                    },
                  ):Container()
              ],
            ):Padding(padding: EdgeInsets.only(left: 20,right: 20,top: 30),child: Text(post.description,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),)),
            SizedBox(
              height: 10,
            ),
            (post.options==null)?Container():Padding(
              child: Wrap(
                direction: Axis.horizontal,
                children: post.options.map((e) => Options(e)).toList(),
              ),
              padding: EdgeInsets.only(left: 0,right: 0),
            ),
            (comments[posts.indexOf(post)])?Padding(padding: EdgeInsets.all(10),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(radius: 20,child: ClipOval(
                  child: Image.asset("images/UI1.png",fit: BoxFit.fill),
                ),
                ),
                SizedBox(width: 20),
                Expanded(child: TextField(
                  decoration: InputDecoration(
                    hintText: "Type your comment",
                    suffixIcon: GestureDetector(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Container(color: Colors.deepPurple,child: Padding(padding: EdgeInsets.all(5),child: Text("POST",style: TextStyle(color: Colors.white),),),),
                      ),
                      onTap: (){
                        setState(() {
                          comments[posts.indexOf(post)]=!comments[posts.indexOf(post)];
                        });
                      },
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.grey.shade400)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.grey.shade400)
                    ),
                  ),
                )),
                SizedBox(width: 20)
              ],
            ),):Container(),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width-20,
              color: Colors.grey.shade400,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      int index = posts.indexOf(post);
                      if(liked[index])
                        {
                          posts[index].likes--;
                          liked[index] = false;
                        }
                      else
                        {
                          posts[index].likes++;
                          liked[index] = true;
                        }
                    });
                  },
                  child: Row(
                    children: [
                      Icon((liked[posts.indexOf(post)])?Icons.star:Icons.star_border),
                      SizedBox(
                        width: 5,
                      ),
                      Text(post.likes.toString()+" Like"),
                    ],
                  ),
                ),
                Expanded(
                  child: SizedBox(),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      int index = posts.indexOf(post);
                      comments[index]=!comments[index];
                    });
                  },
                  child: Row(
                    children: [
                      Icon(Icons.comment),
                      SizedBox(
                        width: 5,
                      ),
                      Text(post.comments.length.toString()+" Comment"),
                    ],
                  ),
                ),
                Expanded(
                  child: SizedBox(),
                ),
                GestureDetector(
                  onTap: () async{
                    print(posts[0].username);//+posts[1].username);
                    PostModel sharedpost = await Navigator.push(context, MaterialPageRoute(builder: (context)=>SharePost(post)));
                    if(sharedpost!=null)
                      posts.insert(0, sharedpost);
                    print(posts[0].username);
                    liked.insert(0,false);
                    comments.insert(0,false);
                    elapsed.insert(0,false);
                    menu.insert(0, false);
                   // post.shares++;
                    setState((){
                    });
                    },
                  child: Row(
                    children: [
                      Icon(Icons.share),
                      SizedBox(
                        width: 5,
                      ),
                      Text(post.shares.toString()+" Share"),
                    ]
                  ),
                ),
                Expanded(
                  child: SizedBox(),
                )
              ],
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
  Widget Options(String e){
    return Padding(padding: EdgeInsets.all(10),child: Container(
      width: (MediaQuery.of(context).size.width-80)/2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey.shade400)
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Text(e,style: TextStyle(fontWeight: FontWeight.bold),)
      ),
    ),);
  }
  Widget LabelChip(String data){
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.deepPurple.shade100
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Text(data,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300,color: Colors.deepPurple)),
        ),
      ),
    );
  }
}
class ReportPost extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ReportPost();
  }

}
List<String> report = ["Inappropriate content","It's spam","It's false story","Advocates violence","It's sexually explicit","Other"];
List<bool> selected = [false,false,false,false,false,false];
class _ReportPost extends State<ReportPost>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.grey.shade400,
        title: Text("Report this post",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.grey,),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
        actions: [
          Center(child: GestureDetector(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: Text("Done  ",style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold,fontSize: 18),),
          ),)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("Choose a reason for reporting this post. Help us understand what's wrong with the post"),
            ),
            Column(
              children: report.map((e) => ReportTile(e)).toList(),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade300,
                  filled: true,
                  hintText: "If other, please mention the reason",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                )
              )
            ),
          ],
        ),
      ),
    );
  }
  Widget ReportTile(String data){
    return ListTile(
      title: Text(data),
      trailing: IconButton(
        onPressed: (){
          setState(() {
            selected[report.indexOf(data)]=!selected[report.indexOf(data)];
          });
        },
        icon: (selected[report.indexOf(data)])?Icon(Icons.check_box,color: Colors.deepPurple,):Icon(Icons.check_box_outline_blank,color: Colors.deepPurple,),
      )
    );
  }
}
bool sharemenu = false;
List<int> sharevisible = [1,0];
class SharePost extends StatefulWidget{
  PostModel post;
  SharePost(this.post);
  @override
  State<StatefulWidget> createState() {
    return _SharePost(post);
  }

}
class _SharePost extends State<SharePost>{
  PostModel post;
  TextEditingController controller = new TextEditingController();
  _SharePost(this.post);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.grey,),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(padding: EdgeInsets.all(10),child: Container(
              width: MediaQuery.of(context).size.width-20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey.shade400
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 20,right: 20,top: 0),
                  title: Text("User Name",style: TextStyle(color: Colors.deepPurple),),
                  subtitle: Text(DateFormat.yMMMMd().format(DateTime.now()),style: TextStyle(fontSize: 14),),
                  leading: CircleAvatar(radius: 30,child: ClipOval(
                    child: Image.asset("images/UI1.png",fit: BoxFit.fill),
                  ),
                  ),
                )
              ),
            ),),
            Padding(padding: EdgeInsets.all(20),child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: "Add Title(Optional)",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent)
                ),
                enabledBorder:  OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent)
                ),
              ),
            ),),
            Padding(padding: EdgeInsets.all(10),child: Container(
              width: MediaQuery.of(context).size.width-20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey.shade400
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: (post.anonymous)?ListTile(
                  contentPadding: EdgeInsets.only(left: 20,right: 20,top: 0),
                  title: Text("Anonymous User",style: TextStyle(color: Colors.deepPurple),),
                  subtitle: Text(DateFormat.yMMMMd().format(post.date),style: TextStyle(fontSize: 14),),
                  leading: CircleAvatar(radius: 30,child: ClipOval(
                    child: Image.asset("images/UI1.png",fit: BoxFit.fill),
                  ),
                  ),
                ):ListTile(
                  contentPadding: EdgeInsets.only(left: 20,right: 20,top: 0),
                  title: Text(post.username,style: TextStyle(color: Colors.deepPurple),),
                  subtitle: Text(DateFormat.yMMMMd().format(post.date),style: TextStyle(fontSize: 14),),
                  leading: CircleAvatar(radius: 30,child: ClipOval(
                    child: Image.network(post.userdp,fit: BoxFit.fill,),
                  ),
                  ),

                ),
              ),
            ),),
            Padding(padding: EdgeInsets.all(20),child: Text(post.title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
            Padding(padding: EdgeInsets.all(20),child: Text(post.description,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),),
            ListTile(
              contentPadding: EdgeInsets.only(left: 20,right: 20,top: 20),
              trailing: Wrap(
                children: <Widget>[
                  FlatButton(
                    shape: RoundedRectangleBorder(borderRadius:  BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(5))),
                    color: Colors.deepPurple,
                    onPressed: (){
                      PostModel sharedpost = PostModel("123456",controller.text+'\n'+post.title,post.description, post.media,  post.location, post.contact, post.labels, post.anonymous, post.visible, post.options,post.votes, "My User Name", post.userdp, 0, [],0, DateTime.now());
                      Navigator.pop(context,sharedpost);
                    },
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text("POST",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
                    ),
                  ),
                  Padding(
                    child: GestureDetector(
                        child: Container(
                          height: 39,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5)),
                              border: Border.all(color: Colors.deepPurple)
                          ),
                          child: Icon(Icons.arrow_drop_down,color: Colors.deepPurple,size: 20,),
                        ),
                        onTap: (){
                          setState(() {
                            sharemenu = !sharemenu;
                          });
                        }
                    ),
                    padding: EdgeInsets.only(top: 4.5),
                  )
                ],
              ),
            ),
            (sharemenu==false)?Container():Padding(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width-220),
                child: Material(
                  child: Container(
                    width: 200,
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 200,
                          color: Colors.grey,
                          child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Center(child: Text("VISIBLE TO",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),)
                          ),
                        ),
                        ListTile(
                          leading: (sharevisible[0]==0)?Icon(Icons.radio_button_unchecked,color: Colors.deepPurple,):Icon(Icons.radio_button_checked,color: Colors.deepPurple,),
                          title: Text("Anyone",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w200),),
                          onTap: (){
                            setState(() {
                              sharevisible[0]=1;
                              sharevisible[1]=0;
                            });
                          },
                        ),
                        Container(
                          width: 200,
                          height: 1,
                          color: Colors.grey,
                        ),
                        ListTile(
                          leading: (sharevisible[1]==0)?Icon(Icons.radio_button_unchecked,color: Colors.deepPurple,):Icon(Icons.radio_button_checked,color: Colors.deepPurple,),
                          title: Text("My Connections",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w200),),
                          onTap: (){
                            setState(() {
                              sharevisible[1]=1;
                              sharevisible[0]=0;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  elevation: 10,
                )
            ),
          ],
        ),
      ),
    );
  }
}
