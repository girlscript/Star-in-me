class PostModel{
  String id;
  final String title;
  final String description;
  final List<String> media;
  final String location;
  final List<String> contact;
  final List<String> labels;
  final bool anonymous;
  final List<int> visible;
  final String username;
  final String userdp;
  final List<String> options;
  final List<int> votes;
  int likes;
  List<String> comments;
  int shares;
  final DateTime date;
  PostModel(this.title,this.description, this.media,  this.location, this.contact, this.labels, this.anonymous, this.visible, this.options,this.votes,this.username, this.userdp, this.likes,this.comments,this.shares, this.date,{this.id});
  factory PostModel.fromJson(Map<String,dynamic> json){
    DateTime dateTime = DateTime.parse(json["date"]);
    List<String> media,contact,labels,options,comments;
    media = new List();
    contact = new List();
    labels = new List();
    options = new List();
    comments = new List();
    List<int> votes,visible;
    votes = new List();
    visible = new List();
    for(int i=0;i<json["media"].length;i++)
      {
        media.add(json["media"][i].toString());
      }
    for(int i=0;i<json["contact"].length;i++)
    {
      contact.add(json["contact"][i].toString());
    }
    for(int i=0;i<json["labels"].length;i++)
    {
      labels.add(json["labels"][i].toString());
    }
    for(int i=0;i<json["options"].length;i++)
    {
      options.add(json["options"][i].toString());
    }
    for(int i=0;i<json["comments"].length;i++)
    {
      comments.add(json["comments"][i].toString());
    }
    for(int i=0;i<json["visible"].length;i++)
    {
      visible.add(int.parse(json["visible"][i].toString()));
    }
    for(int i=0;i<json["votes"].length;i++)
    {
      votes.add(int.parse(json["votes"][i].toString()));
    }
    return PostModel(
      json["title"]??"",
      json["description"]??"",
      media,
      json["location"]??"",
        contact,
      labels,
       json["anonymous"]??false,
       visible,
      options,
        votes,
        json["username"]??"",
        json["userdp"]??"",
       json["likes"]??0,
      comments,
       json["shares"]??0,
      dateTime??DateTime.now(),
      id: json['_id']??""
    );
  }
  Map toJson(){
    Map map = {
      'title' :  title,
      'description' : description,
      'media' : media,
      'location' : location,
      'contact' : contact,
      'labels' : labels,
      'anonymous' : anonymous,
      'visible' : visible,
      'options' : options,
      'votes' : votes,
      'username' : username,
      'userdp' : userdp,
      'likes' : likes,
      'comments' : comments,
      'shares' : shares,
    };
    return map;
  }
}