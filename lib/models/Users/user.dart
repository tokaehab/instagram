abstract class User {
  String username;
  // List<Account> followers;
  // List<Account> followings;
  // List<Post> posts;
  // List<Post> taggedPosts;
  // List<HighlightStory> highlightStories;
  // List<Story> story;
  bool isPrivate;
  String bio;

  User.fromUser(
      String username,
      // List<Account> following,
      // List<Account> followers,
      // List<Post> posts,
      // List<Post> taggedPosts,
      // List<HighlightStory> highlightStories,
      // List<Story> story,
      bool isPrivate,
      String bio)
      : this.username = username,
        // this.followers = followers;
        // this.followings = following;
        // this.posts = posts;
        // this.taggedPosts = taggedPosts;
        // this.highlightStories = highlightStories;
        // this.story = story;
        this.isPrivate = isPrivate,
        this.bio = bio;

  User.fromFirebase(doc)
      : username = doc['username'],
        bio = doc['bio'];
}
