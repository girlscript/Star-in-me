const mongoose = require('mongoose');
var Schema = mongoose.Schema;
var PostSchema = new Schema(
    {
       /* final String id;
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
        final DateTime date;*/
        title: String,
        description: String,
        media: [
            {
                type: String,
            }
        ],
        location: String,
        contact: [
            {
                type: String,
            }
        ],
        labels: [
            {
                type: String,
            }
        ],
        anonymous: Boolean,
        visible: [
            {
                type: Number,
            }
        ],
        username: String,
        userdp: String,
        options: [
            {
                type: String,
            }
        ],
        votes: [
            {
                type: Number,
            }
        ],
        likes: Number,
        shares: Number,
        comments: [
           {
               type: String,
           }
        ],
        date: Date,        
        id: Schema.Types.ObjectId
    }
);
var PostData = mongoose.model('PostData',PostSchema);
module.exports = PostData;
