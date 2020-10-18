import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'PostModel.dart';

class CreatePost extends StatefulWidget {
  static final String CreatePostId = '/createpost';
  @override
  State<StatefulWidget> createState() {
    return _CreatePost();
  }
}

List<int> options = [1];
List<int> imagepicker = [0, 0, 0];
List<String> location = ["", "", ""];
List<List<int>> visible = [
  [1, 0],
  [1, 0],
  [1, 0]
];
List<bool> checked = [false, false, false];
List<bool> menu = [false, false, false];
List<List<String>> people;
List<List<String>> label;
List<bool> display = [false, false, false];
List<String> friends = [
  "Aname",
  "Bname",
  "First",
  "Second",
  "Pragya",
  "Third",
  "Cname"
];
List<String> myfriend = [];

class _CreatePost extends State<CreatePost>
    with SingleTickerProviderStateMixin {
  TabController controller;
  List<FocusNode> _focusNode;
  int _currentIndex = 0;
  List<TextEditingController> title;
  List<TextEditingController> detail;
  List<TextEditingController> optiondetails;
  List<String> words = [];
  String str = '';
  TextPainter painter = new TextPainter();
  void SubmitPost(int i) {
    List<String> selectedoptions = new List();
    if (i == 0) {
      for (int j = 0; j < optiondetails.length; j++) {
        selectedoptions.add(optiondetails[j].text);
      }
    }
    PostModel newpost = PostModel(
        title[i].text,
        detail[i].text,
        [],
        location[i],
        people[i],
        label[i],
        checked[i],
        visible[i],
        selectedoptions,
        "Pragya Gupta",
        "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50",
        0,
        [],
        0,
        DateTime.now());
    Navigator.pop(context, newpost);
  }

  @override
  void initState() {
    people = new List(3);
    options = [1];
    optiondetails = new List();
    optiondetails.add(new TextEditingController());
    _focusNode = new List(3);
    _focusNode[0] = FocusNode();
    _focusNode[1] = FocusNode();
    _focusNode[2] = FocusNode();
    people[0] = new List();
    people[1] = new List();
    people[2] = new List();
    label = new List(3);
    label[0] = new List();
    label[1] = new List();
    label[2] = new List();
    title = new List(3);
    detail = new List(3);
    title[0] = new TextEditingController();
    title[1] = new TextEditingController();
    title[2] = new TextEditingController();
    detail[0] = new TextEditingController();
    detail[1] = new TextEditingController();
    detail[2] = new TextEditingController();
    controller = new TabController(length: 3, vsync: this);
    controller.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    setState(() {
      _currentIndex = controller.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        bottom: new TabBar(
            controller: controller,
            indicatorColor: Colors.white,
            labelPadding: EdgeInsets.zero,
            indicatorPadding: EdgeInsets.zero,
            tabs: <Widget>[
              Padding(
                  padding: EdgeInsets.all(5),
                  child: ClipPath(
                    child: Container(
                        decoration: BoxDecoration(
                            color: (_currentIndex == 0)
                                ? Colors.deepPurple.shade100
                                : Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 5, right: 5, top: 10, bottom: 20),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: SizedBox(),
                              ),
                              Icon(Icons.edit,
                                  color: (_currentIndex == 0)
                                      ? Colors.deepPurple
                                      : Colors.black,
                                  size: 10),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Create Post',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: (_currentIndex == 0)
                                        ? Colors.deepPurple
                                        : Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Expanded(
                                child: SizedBox(),
                              ),
                            ],
                          ),
                        )),
                    clipper: TriangleClipper(),
                  )),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: ClipPath(
                    child: Container(
                        decoration: BoxDecoration(
                            color: (_currentIndex == 1)
                                ? Colors.deepPurple.shade100
                                : Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 5, right: 5, top: 10, bottom: 20),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: SizedBox(),
                              ),
                              Icon(Icons.info_outline,
                                  color: (_currentIndex == 1)
                                      ? Colors.deepPurple
                                      : Colors.black,
                                  size: 10),
                              SizedBox(
                                width: 5,
                              ),
                              Center(
                                child: Text(
                                  'Ask Question',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: (_currentIndex == 1)
                                          ? Colors.deepPurple
                                          : Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(),
                              ),
                            ],
                          ),
                        )),
                    clipper: TriangleClipper(),
                  )),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: ClipPath(
                    child: Container(
                        decoration: BoxDecoration(
                            color: (_currentIndex == 2)
                                ? Colors.deepPurple.shade100
                                : Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 5, right: 5, top: 10, bottom: 20),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: SizedBox(),
                              ),
                              Icon(
                                Icons.subject,
                                color: (_currentIndex == 2)
                                    ? Colors.deepPurple
                                    : Colors.black,
                                size: 10,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Create Poll',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: (_currentIndex == 2)
                                        ? Colors.deepPurple
                                        : Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Expanded(
                                child: SizedBox(),
                              ),
                            ],
                          ),
                        )),
                    clipper: TriangleClipper(),
                  )),
            ]),
      ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller,
        children: <Widget>[createPost(), createQues(), createPoll()],
      ),
    );
  }

  Widget createPoll() {
    return Stack(
      children: <Widget>[
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ListTile(
                contentPadding: EdgeInsets.only(left: 20, right: 20, top: 20),
                title: TextField(
                  controller: title[0],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  decoration: InputDecoration(
                    hintText: "Add Title",
                    hintStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                  ),
                ),
                leading: CircleAvatar(
                  radius: 30,
                  child: ClipOval(
                    child: Image.network(
                      "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  maxLines: 2,
                  controller: detail[0],
                  focusNode: _focusNode[0],
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
                  decoration: InputDecoration(
                    hintText: "What's on your mind?",
                    hintStyle:
                        TextStyle(fontWeight: FontWeight.w200, fontSize: 14),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                  ),
                  onChanged: (val) {
                    setState(() {
                      str = '';
                      words.clear();
                      words = val.split(' ');
                      str = words.length > 0 &&
                              words[words.length - 1].startsWith('@')
                          ? words[words.length - 1]
                          : '';
                      print(str);
                      print(_focusNode[0].offset.dy.toString());
                      print(_focusNode[0].offset.dx.toString());
                      painter = TextPainter(
                          textDirection: TextDirection.ltr,
                          text: TextSpan(
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w200),
                            text: detail[0].text,
                          ));
                      painter.layout();
                      myfriend.clear();
                      if (str != '') {
                        display[0] = true;
                        for (int i = 0; i < friends.length; i++) {
                          if (('@' + friends[i]).contains(str)) {
                            myfriend.add(friends[i]);
                          }
                        }
                      } else {
                        display[0] = false;
                      }
                    });
                  },
                ),
              ),
              Column(
                children: options.map((e) => OptionTile(e)).toList(),
              ),
              SizedBox(
                height: 20,
              ),
              (imagepicker[0] == 0)
                  ? Container()
                  : Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              child: DottedBorder(
                                borderType: BorderType.RRect,
                                radius: Radius.circular(12),
                                child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    child: Container(
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  120) /
                                              3,
                                      height:
                                          (MediaQuery.of(context).size.width -
                                                  120) /
                                              3,
                                      child: Center(
                                        child: GestureDetector(
                                          onTap: () {
                                            //TODO: implement file picking option and change state to image container
                                            return null;
                                          },
                                          child: (true)
                                              ? Container(
                                                  height: 30,
                                                  width: 30,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Color(0xffe0deed)),
                                                  child: Center(
                                                    child: Icon(Icons.add,
                                                        color:
                                                            Color(0xff4f439a),
                                                        size: 18),
                                                  ),
                                                )
                                              : Container(
                                                  child: Image.network(
                                                    "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50",
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                        ),
                                      ),
                                    )),
                              ),
                              padding: EdgeInsets.all(18),
                            ),
                            Padding(
                              child: DottedBorder(
                                borderType: BorderType.RRect,
                                radius: Radius.circular(12),
                                child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    child: Container(
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  120) /
                                              3,
                                      height:
                                          (MediaQuery.of(context).size.width -
                                                  120) /
                                              3,
                                      child: Center(
                                        child: GestureDetector(
                                          onTap: () {
                                            //TODO: implement file picking option
                                            return null;
                                          },
                                          child: (true)
                                              ? Container(
                                                  height: 30,
                                                  width: 30,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Color(0xffe0deed)),
                                                  child: Center(
                                                    child: Icon(Icons.add,
                                                        color:
                                                            Color(0xff4f439a),
                                                        size: 18),
                                                  ),
                                                )
                                              : Container(
                                                  child: Image.network(
                                                    "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50",
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                        ),
                                      ),
                                    )),
                              ),
                              padding: EdgeInsets.all(18),
                            ),
                            Padding(
                              child: DottedBorder(
                                borderType: BorderType.RRect,
                                radius: Radius.circular(12),
                                child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    child: Container(
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  120) /
                                              3,
                                      height:
                                          (MediaQuery.of(context).size.width -
                                                  120) /
                                              3,
                                      child: Center(
                                        child: GestureDetector(
                                          onTap: () {
                                            //TODO: implement file picking option
                                            return null;
                                          },
                                          child: (true)
                                              ? Container(
                                                  height: 30,
                                                  width: 30,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Color(0xffe0deed)),
                                                  child: Center(
                                                    child: Icon(Icons.add,
                                                        color:
                                                            Color(0xff4f439a),
                                                        size: 18),
                                                  ),
                                                )
                                              : Container(
                                                  child: Image.network(
                                                    "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50",
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                        ),
                                      ),
                                    )),
                              ),
                              padding: EdgeInsets.all(18),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, bottom: 20),
                          child: Text("You can upload upto 3 photos"),
                        )
                      ],
                    ),
              (location[0] == '')
                  ? Container()
                  : Container(
                      color: Colors.grey,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: RichText(
                          text: TextSpan(children: <TextSpan>[
                            TextSpan(
                                text: 'at ',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w200,
                                    color: Colors.black)),
                            TextSpan(
                                text: location[0],
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          ]),
                        ),
                      ),
                    ),
              (people[0].length == 0)
                  ? Container()
                  : Container(
                      color: Colors.grey,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: RichText(
                          text: TextSpan(children: <TextSpan>[
                            TextSpan(
                                text: 'with ',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w200,
                                    color: Colors.black)),
                            TextSpan(
                                text: people[0][0] +
                                    " +" +
                                    (people[0].length - 1).toString(),
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          ]),
                        ),
                      ),
                    ),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      child: Icon(
                        Icons.image,
                        color: Colors.deepPurple,
                      ),
                      onTap: () {
                        setState(() {
                          imagepicker[0] = 1;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: Icon(
                        Icons.video_library,
                        color: Colors.deepPurple,
                      ),
                      onTap: () {
                        setState(() {
                          imagepicker[0] = 1;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: Icon(
                        Icons.picture_as_pdf,
                        color: Colors.deepPurple,
                      ),
                      onTap: () {
                        setState(() {
                          imagepicker[0] = 1;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: Icon(
                        Icons.location_on,
                        color: Colors.deepPurple,
                      ),
                      onTap: () {
                        setState(() {
                          //TODO: add location search feature
                          location[0] = "Taj Westend, Bengaluru";
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: Icon(
                        Icons.person_add,
                        color: Colors.deepPurple,
                      ),
                      onTap: () {
                        setState(() {
                          //TODO: implement search people option
                          people[0].add("Caroline Colon");
                          people[0].add("second person");
                          people[0].add("Third person");
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: FlatButton(
                  onPressed: () {
                    //TODO: implement label search and add to list
                    setState(() {
                      label[0].add("Technology");
                      label[0].add("Literature");
                      label[0].add("Design");
                    });
                  },
                  shape: new RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "ADD LABEL",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple),
                    ),
                  ),
                ),
              ),
              Padding(
                child: Wrap(
                  direction: Axis.horizontal,
                  children: label[0].map((e) => MyChip1(e)).toList(),
                ),
                padding: EdgeInsets.only(left: 30, right: 30),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 20, right: 20, top: 20),
                trailing: Wrap(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 15),
                      child: GestureDetector(
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 14),
                        ),
                        onTap: () {
                          setState(() {
                            display[0] = false;
                            options = [1];
                            imagepicker[0] = 0;
                            location[0] = "";
                            visible[0] = [1, 0];
                            checked[0] = false;
                            menu[0] = false;
                            people[0].clear();
                            label[0].clear();
                            title[0].clear();
                            detail[0].clear();
                          });
                        },
                      ),
                    ),
                    FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5))),
                      color: Colors.deepPurple,
                      onPressed: () {
                        SubmitPost(0);
                      },
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "POST",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      child: GestureDetector(
                          child: Container(
                            height: 39,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5)),
                                border: Border.all(color: Colors.deepPurple)),
                            child: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.deepPurple,
                              size: 20,
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              menu[0] = !menu[0];
                            });
                          }),
                      padding: EdgeInsets.only(top: 4.5),
                    )
                  ],
                ),
              ),
              (menu[0] == false)
                  ? Container()
                  : Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width - 220),
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
                                    child: Center(
                                      child: Text(
                                        "VISIBLE TO",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14),
                                      ),
                                    )),
                              ),
                              ListTile(
                                leading: (visible[0][0] == 0)
                                    ? Icon(
                                        Icons.radio_button_unchecked,
                                        color: Colors.deepPurple,
                                      )
                                    : Icon(
                                        Icons.radio_button_checked,
                                        color: Colors.deepPurple,
                                      ),
                                title: Text(
                                  "Anyone",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w200),
                                ),
                                onTap: () {
                                  setState(() {
                                    visible[0][0] = 1;
                                    visible[0][1] = 0;
                                  });
                                },
                              ),
                              Container(
                                width: 200,
                                height: 1,
                                color: Colors.grey,
                              ),
                              ListTile(
                                leading: (visible[0][1] == 0)
                                    ? Icon(
                                        Icons.radio_button_unchecked,
                                        color: Colors.deepPurple,
                                      )
                                    : Icon(
                                        Icons.radio_button_checked,
                                        color: Colors.deepPurple,
                                      ),
                                title: Text(
                                  "My Connections",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w200),
                                ),
                                onTap: () {
                                  setState(() {
                                    visible[0][1] = 1;
                                    visible[0][0] = 0;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        elevation: 10,
                      )),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
        (display[0] == false)
            ? Container()
            : Positioned(
                top: (_focusNode[0].offset.dy - 130) +
                    (painter.height) +
                    10 +
                    painter.width /
                        (MediaQuery.of(context).size.width - 70) *
                        14,
                left: ((_focusNode[0].offset.dx +
                            painter.width %
                                (MediaQuery.of(context).size.width - 70) +
                            10) <
                        MediaQuery.of(context).size.width - 160)
                    ? _focusNode[0].offset.dx +
                        painter.width %
                            (MediaQuery.of(context).size.width - 70) +
                        10
                    : MediaQuery.of(context).size.width - 160,
                child: (myfriend.length == 0)
                    ? Container()
                    : Container(
                        width: 150,
                        height: (myfriend.length > 5) ? 200 : null,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.grey),
                            color: Colors.white),
                        child: SingleChildScrollView(
                          child: Column(
                              children: myfriend.map((s) {
                            return GestureDetector(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        s,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w200),
                                      ),
                                    ),
                                    (s == myfriend[myfriend.length - 1])
                                        ? Container()
                                        : Container(
                                            height: 1,
                                            width: 150,
                                            color: Colors.grey,
                                          )
                                  ],
                                ),
                                onTap: () {
                                  setState(() {
                                    words.clear();
                                    myfriend.clear();
                                    detail[0].text +=
                                        s.substring(str.length - 1);
                                    display[0] = false;
                                    str = '';
                                    detail[0].selection =
                                        TextSelection.fromPosition(TextPosition(
                                            offset: detail[0].text.length));
                                  });
                                });
                          }).toList()),
                        )),
              ),
      ],
    );
  }

  Widget createQues() {
    return Stack(
      children: <Widget>[
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ListTile(
                contentPadding: EdgeInsets.only(left: 20, right: 20, top: 20),
                title: TextField(
                  controller: title[1],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  decoration: InputDecoration(
                    hintText: "Add Title",
                    hintStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                  ),
                ),
                leading: CircleAvatar(
                  radius: 30,
                  child: ClipOval(
                    child: Image.network(
                      "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  maxLines: 5,
                  controller: detail[1],
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
                  decoration: InputDecoration(
                    hintText: "What's on your mind?",
                    hintStyle:
                        TextStyle(fontWeight: FontWeight.w200, fontSize: 14),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                  ),
                  focusNode: _focusNode[1],
                  onChanged: (val) {
                    setState(() {
                      str = '';
                      words.clear();
                      words = val.split(' ');
                      str = words.length > 0 &&
                              words[words.length - 1].startsWith('@')
                          ? words[words.length - 1]
                          : '';
                      print(str);
                      print(_focusNode[1].offset.dy.toString());
                      print(_focusNode[1].offset.dx.toString());
                      painter = TextPainter(
                          textDirection: TextDirection.ltr,
                          text: TextSpan(
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w200),
                            text: detail[1].text,
                          ));
                      painter.layout();
                      myfriend.clear();
                      if (str != '') {
                        display[1] = true;
                        for (int i = 0; i < friends.length; i++) {
                          if (('@' + friends[i]).contains(str)) {
                            myfriend.add(friends[i]);
                          }
                        }
                      } else {
                        display[1] = false;
                      }
                    });
                  },
                ),
              ),
              (imagepicker[1] == 0)
                  ? Container()
                  : Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              child: DottedBorder(
                                borderType: BorderType.RRect,
                                radius: Radius.circular(12),
                                child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    child: Container(
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  120) /
                                              3,
                                      height:
                                          (MediaQuery.of(context).size.width -
                                                  120) /
                                              3,
                                      child: Center(
                                        child: GestureDetector(
                                          onTap: () {
                                            //TODO: implement file picking option and change state to image container
                                            return null;
                                          },
                                          child: (true)
                                              ? Container(
                                                  height: 30,
                                                  width: 30,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Color(0xffe0deed)),
                                                  child: Center(
                                                    child: Icon(Icons.add,
                                                        color:
                                                            Color(0xff4f439a),
                                                        size: 18),
                                                  ),
                                                )
                                              : Container(
                                                  child: Image.network(
                                                    "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50",
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                        ),
                                      ),
                                    )),
                              ),
                              padding: EdgeInsets.all(18),
                            ),
                            Padding(
                              child: DottedBorder(
                                borderType: BorderType.RRect,
                                radius: Radius.circular(12),
                                child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    child: Container(
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  120) /
                                              3,
                                      height:
                                          (MediaQuery.of(context).size.width -
                                                  120) /
                                              3,
                                      child: Center(
                                        child: GestureDetector(
                                          onTap: () {
                                            //TODO: implement file picking option
                                            return null;
                                          },
                                          child: (true)
                                              ? Container(
                                                  height: 30,
                                                  width: 30,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Color(0xffe0deed)),
                                                  child: Center(
                                                    child: Icon(Icons.add,
                                                        color:
                                                            Color(0xff4f439a),
                                                        size: 18),
                                                  ),
                                                )
                                              : Container(
                                                  child: Image.network(
                                                    "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50",
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                        ),
                                      ),
                                    )),
                              ),
                              padding: EdgeInsets.all(18),
                            ),
                            Padding(
                              child: DottedBorder(
                                borderType: BorderType.RRect,
                                radius: Radius.circular(12),
                                child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    child: Container(
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  120) /
                                              3,
                                      height:
                                          (MediaQuery.of(context).size.width -
                                                  120) /
                                              3,
                                      child: Center(
                                        child: GestureDetector(
                                          onTap: () {
                                            //TODO: implement file picking option
                                            return null;
                                          },
                                          child: (true)
                                              ? Container(
                                                  height: 30,
                                                  width: 30,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Color(0xffe0deed)),
                                                  child: Center(
                                                    child: Icon(Icons.add,
                                                        color:
                                                            Color(0xff4f439a),
                                                        size: 18),
                                                  ),
                                                )
                                              : Container(
                                                  child: Image.network(
                                                    "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50",
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                        ),
                                      ),
                                    )),
                              ),
                              padding: EdgeInsets.all(18),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, bottom: 20),
                          child: Text("You can upload upto 3 photos"),
                        )
                      ],
                    ),
              (location[1] == '')
                  ? Container()
                  : Container(
                      color: Colors.grey,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: RichText(
                          text: TextSpan(children: <TextSpan>[
                            TextSpan(
                                text: 'at ',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w200,
                                    color: Colors.black)),
                            TextSpan(
                                text: location[1],
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          ]),
                        ),
                      ),
                    ),
              (people[1].length == 0)
                  ? Container()
                  : Container(
                      color: Colors.grey,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: RichText(
                          text: TextSpan(children: <TextSpan>[
                            TextSpan(
                                text: 'with ',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w200,
                                    color: Colors.black)),
                            TextSpan(
                                text: people[1][0] +
                                    " +" +
                                    (people[1].length - 1).toString(),
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          ]),
                        ),
                      ),
                    ),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      child: Icon(
                        Icons.image,
                        color: Colors.deepPurple,
                      ),
                      onTap: () {
                        setState(() {
                          imagepicker[1] = 1;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: Icon(
                        Icons.video_library,
                        color: Colors.deepPurple,
                      ),
                      onTap: () {
                        setState(() {
                          imagepicker[1] = 1;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: Icon(
                        Icons.picture_as_pdf,
                        color: Colors.deepPurple,
                      ),
                      onTap: () {
                        setState(() {
                          imagepicker[1] = 1;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: Icon(
                        Icons.location_on,
                        color: Colors.deepPurple,
                      ),
                      onTap: () {
                        setState(() {
                          //TODO: add location search feature
                          location[1] = "Taj Westend, Bengaluru";
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: Icon(
                        Icons.person_add,
                        color: Colors.deepPurple,
                      ),
                      onTap: () {
                        setState(() {
                          //TODO: implement search people option
                          people[1].add("Caroline Colon");
                          people[1].add("second person");
                          people[1].add("Third person");
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: FlatButton(
                  onPressed: () {
                    //TODO: implement label search and add to list
                    setState(() {
                      label[1].add("Technology");
                      label[1].add("Literature");
                      label[1].add("Design");
                    });
                  },
                  shape: new RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "TAG EXPERTISE",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple),
                    ),
                  ),
                ),
              ),
              Padding(
                child: Wrap(
                  direction: Axis.horizontal,
                  children: label[1].map((e) => MyChip2(e)).toList(),
                ),
                padding: EdgeInsets.only(left: 30, right: 30),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 20, right: 20, top: 20),
                title: Text(
                  "Note: Your questions go to experts based on expertise you select",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.deepPurple),
                ),
                trailing: Wrap(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 15),
                      child: GestureDetector(
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 14),
                        ),
                        onTap: () {
                          setState(() {
                            display[1] = false;
                            imagepicker[1] = 0;
                            location[1] = "";
                            visible[1] = [1, 0];
                            checked[1] = false;
                            menu[1] = false;
                            people[1].clear();
                            label[1].clear();
                            title[1].clear();
                            detail[1].clear();
                          });
                        },
                      ),
                    ),
                    FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5))),
                      color: Colors.deepPurple,
                      onPressed: () {
                        SubmitPost(1);
                      },
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "POST",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      child: GestureDetector(
                          child: Container(
                            height: 39,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5)),
                                border: Border.all(color: Colors.deepPurple)),
                            child: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.deepPurple,
                              size: 20,
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              menu[1] = !menu[1];
                            });
                          }),
                      padding: EdgeInsets.only(top: 4.5),
                    )
                  ],
                ),
              ),
              (menu[1] == false)
                  ? Container()
                  : Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width - 220),
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
                                    child: Center(
                                      child: Text(
                                        "VISIBLE TO",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14),
                                      ),
                                    )),
                              ),
                              ListTile(
                                leading: (visible[1][0] == 0)
                                    ? Icon(
                                        Icons.radio_button_unchecked,
                                        color: Colors.deepPurple,
                                      )
                                    : Icon(
                                        Icons.radio_button_checked,
                                        color: Colors.deepPurple,
                                      ),
                                title: Text(
                                  "Anyone",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w200),
                                ),
                                onTap: () {
                                  setState(() {
                                    visible[1][0] = 1;
                                    visible[1][1] = 0;
                                  });
                                },
                              ),
                              Container(
                                width: 200,
                                height: 1,
                                color: Colors.grey,
                              ),
                              ListTile(
                                leading: (visible[1][1] == 0)
                                    ? Icon(
                                        Icons.radio_button_unchecked,
                                        color: Colors.deepPurple,
                                      )
                                    : Icon(
                                        Icons.radio_button_checked,
                                        color: Colors.deepPurple,
                                      ),
                                title: Text(
                                  "My Connections",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w200),
                                ),
                                onTap: () {
                                  setState(() {
                                    visible[1][1] = 1;
                                    visible[1][0] = 0;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        elevation: 10,
                      )),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
        (display[1] == false)
            ? Container()
            : Positioned(
                top: (_focusNode[1].offset.dy - 130) +
                    (painter.height) +
                    10 +
                    painter.width /
                        (MediaQuery.of(context).size.width - 70) *
                        14,
                left: ((_focusNode[1].offset.dx +
                            painter.width %
                                (MediaQuery.of(context).size.width - 70) +
                            10) <
                        MediaQuery.of(context).size.width - 160)
                    ? _focusNode[1].offset.dx +
                        painter.width %
                            (MediaQuery.of(context).size.width - 70) +
                        10
                    : MediaQuery.of(context).size.width - 160,
                child: (myfriend.length == 0)
                    ? Container()
                    : Container(
                        width: 150,
                        height: (myfriend.length > 5) ? 200 : null,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.grey),
                            color: Colors.white),
                        child: SingleChildScrollView(
                          child: Column(
                              children: myfriend.map((s) {
                            return GestureDetector(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        s,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w200),
                                      ),
                                    ),
                                    (s == myfriend[myfriend.length - 1])
                                        ? Container()
                                        : Container(
                                            height: 1,
                                            width: 150,
                                            color: Colors.grey,
                                          )
                                  ],
                                ),
                                onTap: () {
                                  setState(() {
                                    words.clear();
                                    myfriend.clear();
                                    detail[1].text +=
                                        s.substring(str.length - 1);
                                    display[1] = false;
                                    str = '';
                                    detail[1].selection =
                                        TextSelection.fromPosition(TextPosition(
                                            offset: detail[1].text.length));
                                  });
                                });
                          }).toList()),
                        )),
              ),
      ],
    );
  }

  Widget createPost() {
    return Stack(
      children: <Widget>[
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ListTile(
                contentPadding: EdgeInsets.only(left: 20, right: 20, top: 20),
                title: TextField(
                  controller: title[2],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  decoration: InputDecoration(
                    hintText: "Add Title",
                    hintStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                  ),
                ),
                leading: CircleAvatar(
                  radius: 30,
                  child: ClipOval(
                    child: Image.network(
                      "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  maxLines: 5,
                  controller: detail[2],
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
                  decoration: InputDecoration(
                    hintText: "What's on your mind?",
                    hintStyle:
                        TextStyle(fontWeight: FontWeight.w200, fontSize: 14),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                  ),
                  focusNode: _focusNode[2],
                  onChanged: (val) {
                    setState(() {
                      str = '';
                      words.clear();
                      words = val.split(' ');
                      str = words.length > 0 &&
                              words[words.length - 1].startsWith('@')
                          ? words[words.length - 1]
                          : '';
                      print(str);
                      print(_focusNode[2].offset.dy.toString());
                      print(_focusNode[2].offset.dx.toString());
                      painter = TextPainter(
                          textDirection: TextDirection.ltr,
                          text: TextSpan(
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w200),
                            text: detail[2].text,
                          ));
                      painter.layout();
                      myfriend.clear();
                      if (str != '') {
                        display[2] = true;
                        for (int i = 0; i < friends.length; i++) {
                          if (('@' + friends[i]).contains(str)) {
                            myfriend.add(friends[i]);
                          }
                        }
                      } else {
                        display[2] = false;
                      }
                    });
                  },
                ),
              ),
              (imagepicker[2] == 0)
                  ? Container()
                  : Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              child: DottedBorder(
                                borderType: BorderType.RRect,
                                radius: Radius.circular(12),
                                child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    child: Container(
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  120) /
                                              3,
                                      height:
                                          (MediaQuery.of(context).size.width -
                                                  120) /
                                              3,
                                      child: Center(
                                        child: GestureDetector(
                                          onTap: () {
                                            //TODO: implement file picking option and change state to image container
                                            return null;
                                          },
                                          child: (true)
                                              ? Container(
                                                  height: 30,
                                                  width: 30,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Color(0xffe0deed)),
                                                  child: Center(
                                                    child: Icon(Icons.add,
                                                        color:
                                                            Color(0xff4f439a),
                                                        size: 18),
                                                  ),
                                                )
                                              : Container(
                                                  child: Image.network(
                                                    "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50",
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                        ),
                                      ),
                                    )),
                              ),
                              padding: EdgeInsets.all(18),
                            ),
                            Padding(
                              child: DottedBorder(
                                borderType: BorderType.RRect,
                                radius: Radius.circular(12),
                                child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    child: Container(
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  120) /
                                              3,
                                      height:
                                          (MediaQuery.of(context).size.width -
                                                  120) /
                                              3,
                                      child: Center(
                                        child: GestureDetector(
                                          onTap: () {
                                            //TODO: implement file picking option
                                            return null;
                                          },
                                          child: (true)
                                              ? Container(
                                                  height: 30,
                                                  width: 30,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Color(0xffe0deed)),
                                                  child: Center(
                                                    child: Icon(Icons.add,
                                                        color:
                                                            Color(0xff4f439a),
                                                        size: 18),
                                                  ),
                                                )
                                              : Container(
                                                  child: Image.network(
                                                    "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50",
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                        ),
                                      ),
                                    )),
                              ),
                              padding: EdgeInsets.all(18),
                            ),
                            Padding(
                              child: DottedBorder(
                                borderType: BorderType.RRect,
                                radius: Radius.circular(12),
                                child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    child: Container(
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  120) /
                                              3,
                                      height:
                                          (MediaQuery.of(context).size.width -
                                                  120) /
                                              3,
                                      child: Center(
                                        child: GestureDetector(
                                          onTap: () {
                                            //TODO: implement file picking option
                                            return null;
                                          },
                                          child: (true)
                                              ? Container(
                                                  height: 30,
                                                  width: 30,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Color(0xffe0deed)),
                                                  child: Center(
                                                    child: Icon(Icons.add,
                                                        color:
                                                            Color(0xff4f439a),
                                                        size: 18),
                                                  ),
                                                )
                                              : Container(
                                                  child: Image.network(
                                                    "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50",
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                        ),
                                      ),
                                    )),
                              ),
                              padding: EdgeInsets.all(18),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, bottom: 20),
                          child: Text("You can upload upto 3 photos"),
                        )
                      ],
                    ),
              (location[2] == '')
                  ? Container()
                  : Container(
                      color: Colors.grey,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: RichText(
                          text: TextSpan(children: <TextSpan>[
                            TextSpan(
                                text: 'at ',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w200,
                                    color: Colors.black)),
                            TextSpan(
                                text: location[2],
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          ]),
                        ),
                      ),
                    ),
              (people[2].length == 0)
                  ? Container()
                  : Container(
                      color: Colors.grey,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: RichText(
                          text: TextSpan(children: <TextSpan>[
                            TextSpan(
                                text: 'with ',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w200,
                                    color: Colors.black)),
                            TextSpan(
                                text: people[2][0] +
                                    " +" +
                                    (people[2].length - 1).toString(),
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          ]),
                        ),
                      ),
                    ),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      child: Icon(
                        Icons.image,
                        color: Colors.deepPurple,
                      ),
                      onTap: () {
                        setState(() {
                          imagepicker[2] = 1;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: Icon(
                        Icons.video_library,
                        color: Colors.deepPurple,
                      ),
                      onTap: () {
                        setState(() {
                          imagepicker[2] = 1;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: Icon(
                        Icons.picture_as_pdf,
                        color: Colors.deepPurple,
                      ),
                      onTap: () {
                        setState(() {
                          imagepicker[2] = 1;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: Icon(
                        Icons.location_on,
                        color: Colors.deepPurple,
                      ),
                      onTap: () {
                        setState(() {
                          //TODO: add location search feature
                          location[2] = "Taj Westend, Bengaluru";
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: Icon(
                        Icons.person_add,
                        color: Colors.deepPurple,
                      ),
                      onTap: () {
                        setState(() {
                          //TODO: implement search people option
                          people[2].add("Caroline Colon");
                          people[2].add("second person");
                          people[2].add("Third person");
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: FlatButton(
                  onPressed: () {
                    //TODO: implement label search and add to list
                    setState(() {
                      label[2].add("Technology");
                      label[2].add("Literature");
                      label[2].add("Design");
                    });
                  },
                  shape: new RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "ADD LABEL",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple),
                    ),
                  ),
                ),
              ),
              Padding(
                child: Wrap(
                  direction: Axis.horizontal,
                  children: label[2].map((e) => MyChip3(e)).toList(),
                ),
                padding: EdgeInsets.only(left: 30, right: 30),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 20, right: 20, top: 20),
                leading: GestureDetector(
                  onTap: () {
                    setState(() {
                      checked[2] = !checked[2];
                    });
                  },
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: (checked[2]) ? Colors.deepPurple : Colors.white,
                    ),
                  ),
                ),
                title: Text(
                  'Post anonymously',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
                ),
                trailing: Wrap(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 15),
                      child: GestureDetector(
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 14),
                        ),
                        onTap: () {
                          setState(() {
                            display[2] = false;
                            imagepicker[2] = 0;
                            location[2] = "";
                            visible[2] = [1, 0];
                            checked[2] = false;
                            menu[2] = false;
                            people[2].clear();
                            label[2].clear();
                            title[2].clear();
                            detail[2].clear();
                            myfriend.clear();
                          });
                        },
                      ),
                    ),
                    FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5))),
                      color: Colors.deepPurple,
                      onPressed: () {
                        SubmitPost(2);
                      },
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "POST",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      child: GestureDetector(
                          child: Container(
                            height: 39,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5)),
                                border: Border.all(color: Colors.deepPurple)),
                            child: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.deepPurple,
                              size: 20,
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              menu[2] = !menu[2];
                            });
                          }),
                      padding: EdgeInsets.only(top: 4.5),
                    )
                  ],
                ),
              ),
              (menu[2] == false)
                  ? Container()
                  : Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width - 220),
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
                                    child: Center(
                                      child: Text(
                                        "VISIBLE TO",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14),
                                      ),
                                    )),
                              ),
                              ListTile(
                                leading: (visible[2][0] == 0)
                                    ? Icon(
                                        Icons.radio_button_unchecked,
                                        color: Colors.deepPurple,
                                      )
                                    : Icon(
                                        Icons.radio_button_checked,
                                        color: Colors.deepPurple,
                                      ),
                                title: Text(
                                  "Anyone",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w200),
                                ),
                                onTap: () {
                                  setState(() {
                                    visible[2][0] = 1;
                                    visible[2][1] = 0;
                                  });
                                },
                              ),
                              Container(
                                width: 200,
                                height: 1,
                                color: Colors.grey,
                              ),
                              ListTile(
                                leading: (visible[2][1] == 0)
                                    ? Icon(
                                        Icons.radio_button_unchecked,
                                        color: Colors.deepPurple,
                                      )
                                    : Icon(
                                        Icons.radio_button_checked,
                                        color: Colors.deepPurple,
                                      ),
                                title: Text(
                                  "My Connections",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w200),
                                ),
                                onTap: () {
                                  setState(() {
                                    visible[2][1] = 1;
                                    visible[2][0] = 0;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        elevation: 10,
                      )),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
        (display[2] == false)
            ? Container()
            : Positioned(
                top: (_focusNode[2].offset.dy - 130) +
                    (painter.height) +
                    10 +
                    painter.width /
                        (MediaQuery.of(context).size.width - 70) *
                        14,
                left: ((_focusNode[2].offset.dx +
                            painter.width %
                                (MediaQuery.of(context).size.width - 70) +
                            10) <
                        MediaQuery.of(context).size.width - 160)
                    ? _focusNode[2].offset.dx +
                        painter.width %
                            (MediaQuery.of(context).size.width - 70) +
                        10
                    : MediaQuery.of(context).size.width - 160,
                child: (myfriend.length == 0)
                    ? Container()
                    : Container(
                        width: 150,
                        height: (myfriend.length > 5) ? 200 : null,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.grey),
                            color: Colors.white),
                        child: SingleChildScrollView(
                          child: Column(
                              children: myfriend.map((s) {
                            return GestureDetector(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        s,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w200),
                                      ),
                                    ),
                                    (s == myfriend[myfriend.length - 1])
                                        ? Container()
                                        : Container(
                                            height: 1,
                                            width: 150,
                                            color: Colors.grey,
                                          )
                                  ],
                                ),
                                onTap: () {
                                  setState(() {
                                    words.clear();
                                    myfriend.clear();
                                    detail[2].text +=
                                        s.substring(str.length - 1);
                                    display[2] = false;
                                    str = '';
                                    detail[2].selection =
                                        TextSelection.fromPosition(TextPosition(
                                            offset: detail[2].text.length));
                                  });
                                });
                          }).toList()),
                        )),
              ),
      ],
    );
  }

  Widget MyChip1(String data) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey),
          ),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Wrap(
              direction: Axis.horizontal,
              children: <Widget>[
                Text(data,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.deepPurple)),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.cancel,
                  color: Colors.deepPurple,
                  size: 16,
                )
              ],
            ),
          ),
        ),
      ),
      onTap: () {
        setState(() {
          label[0].remove(data);
        });
        return null;
      },
    );
  }

  Widget MyChip2(String data) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey),
          ),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Wrap(
              direction: Axis.horizontal,
              children: <Widget>[
                Text(data,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.deepPurple)),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.cancel,
                  color: Colors.deepPurple,
                  size: 16,
                )
              ],
            ),
          ),
        ),
      ),
      onTap: () {
        setState(() {
          label[1].remove(data);
        });
        return null;
      },
    );
  }

  Widget OptionTile(int data) {
    return Padding(
      padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: Container(
        width: MediaQuery.of(context).size.width - 60,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey)),
        child: Row(
          children: <Widget>[
            Container(
                height: 60,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10))),
                child: Center(
                  child: Text(
                    data.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.deepPurple),
                  ),
                )),
            Expanded(
                child: Center(
              child: TextField(
                controller: optiondetails[data - 1],
                decoration: InputDecoration(
                  hintText: "Add Option",
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)),
                ),
              ),
            )),
            (data == options.length)
                ? GestureDetector(
                    child: Container(
                        height: 60,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: Center(
                            child: Icon(
                          Icons.add,
                          size: 20,
                          color: Colors.white,
                        ))),
                    onTap: () {
                      setState(() {
                        options.add(options.length + 1);
                        optiondetails.add(new TextEditingController());
                      });
                    },
                  )
                : Container(),
          ],
        ),
      ),
    );
  }

  Widget MyChip3(String data) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey),
          ),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Wrap(
              direction: Axis.horizontal,
              children: <Widget>[
                Text(data,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.deepPurple)),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.cancel,
                  color: Colors.deepPurple,
                  size: 16,
                )
              ],
            ),
          ),
        ),
      ),
      onTap: () {
        setState(() {
          label[2].remove(data);
        });
        return null;
      },
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 15);
    path.quadraticBezierTo(0.0, size.height - 10, 5, size.height - 10);
    path.lineTo(size.width / 2 - 10, size.height - 10);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width / 2 + 10, size.height - 10);
    path.lineTo(size.width - 5, size.height - 10);
    path.quadraticBezierTo(
        size.width, size.height - 10, size.width, size.height - 15);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}
