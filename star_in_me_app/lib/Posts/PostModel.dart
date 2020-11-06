class PostModel{
  final String id;
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
  PostModel(this.id,this.title,this.description, this.media,  this.location, this.contact, this.labels, this.anonymous, this.visible, this.options,this.votes,this.username, this.userdp, this.likes,this.comments,this.shares, this.date);

}