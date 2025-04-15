//Voici les données que vous devrez ajouter à votre application.

User user1 = User(
    username: 'Matt Codabee',
    imageUrl:
        'https://d1yei2z3i6k35z.cloudfront.net/5092652/65548cdf1f586_codabee_logo_red.png',
    stories: [story1]);

User user2 = User(
    username: 'Jenny',
    imageUrl:
        'https://images.pexels.com/photos/8832540/pexels-photo-8832540.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    stories: [story2, story3]);

User user3 = User(
    username: 'Ben Howie',
    imageUrl:
        'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    stories: [story4]);

User user4 = User(
    username: 'Poney Taylor',
    imageUrl:
        'https://images.unsplash.com/photo-1551884831-bbf3cdc6469e?q=80&w=1948&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    stories: [story5, story6, story7]);

User user5 = User(
    username: 'Richie McPaw ',
    imageUrl:
        'https://images.unsplash.com/photo-1518020382113-a7e8fc38eac9?q=80&w=2034&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    stories: [story8]);

User user6 = User(
    username: 'Bianca',
    imageUrl:
        'https://images.unsplash.com/photo-1580489944761-15a19d654956?q=80&w=1961&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    stories: [story9, story10]);

User user7 = User(
    username: 'Patrick Bisby',
    imageUrl:
        'https://images.unsplash.com/photo-1568602471122-7832951cc4c5?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    stories: [story11]);

Story story1 = Story(
    url:
        'https://images.unsplash.com/photo-1700413473936-81b281f88715?q=80&w=1972&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    type: MediaType.image,
    duration: const Duration(seconds: 10));

Story story2 = Story(
    url:
        'https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExdHl1NzZ6amU3bGRwd2xybm5kaDJ6NnY5eGY2azgzNjh4aWlhNzFvbiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/LzwcNOrbA3aYvXK6r7/giphy.gif',
    type: MediaType.image,
    duration: const Duration(seconds: 7));

Story story3 = Story(
  url: 'https://blog.codabee.com/wp-content/uploads/2023/12/170272-540p.mp4',
  type: MediaType.video,
  duration: const Duration(seconds: 0),
);

Story story4 = Story(
  url:
      'https://images.unsplash.com/photo-1700573941847-d42179081698?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  type: MediaType.image,
  duration: const Duration(seconds: 5),
);
Story story5 = Story(
  url: 'https://blog.codabee.com/wp-content/uploads/2023/12/159557-720p.mp4',
  type: MediaType.video,
  duration: const Duration(seconds: 0),
);

Story story6 = Story(
  url:
      'https://images.unsplash.com/photo-1699269266070-97882aaf9fec?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  type: MediaType.image,
  duration: const Duration(seconds: 8),
);

Story story7 = Story(
  url: 'https://blog.codabee.com/wp-content/uploads/2023/12/181301-1080p.mp4',
  type: MediaType.video,
  duration: const Duration(seconds: 0),
);

Story story8 = Story(
  url:
      'https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExYTZ4bTFtbmpjbjEwNzFtc28yY2JkOW1uNGZ4ZmhzMzJ5Y3RzeDNhcCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/R6gvnAxj2ISzJdbA63/giphy-downsized-large.gif',
  type: MediaType.image,
  duration: const Duration(seconds: 8),
);

Story story9 = Story(
  url:
      'https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExNWcxdW9tdmkyZ3Z5cThlY3Y1YnJ6dG13MTBubzFjYzAwenFhNzRpbyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/cL4pqu8GGRIihabgSM/giphy.gif',
  type: MediaType.image,
  duration: const Duration(seconds: 8),
);

Story story10 = Story(
  url:
      'https://images.unsplash.com/photo-1682687981603-ae874bf432f2?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  type: MediaType.image,
  duration: const Duration(seconds: 8),
);

Story story11 = Story(
  url: 'https://blog.codabee.com/wp-content/uploads/2023/12/125483-720p.mp4',
  type: MediaType.video,
  duration: const Duration(seconds: 8),
);

List<User> users = [user1, user2, user3, user4, user5, user6, user7];

//Réels

Reel reel1 = Reel(
    url: 'https://blog.codabee.com/wp-content/uploads/2023/12/159703-720p.mp4',
    type: MediaType.video,
    duration: const Duration(seconds: 0),
    user: user1);

Reel reel2 = Reel(
    url:
        'https://blog.codabee.com/wp-content/uploads/2023/12/waterfall_-_115537-720p.mp4',
    type: MediaType.video,
    duration: const Duration(seconds: 0),
    user: user2);

Reel reel3 = Reel(
    url: 'https://blog.codabee.com/wp-content/uploads/2023/12/170617-1080p.mp4',
    type: MediaType.video,
    duration: const Duration(seconds: 0),
    user: user3);

List<Reel> reels = [reel1, reel2, reel3];
