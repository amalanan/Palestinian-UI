import 'models/models.dart';

List<String> images = [
  'assets/images/7.jpeg',
  'assets/images/8.jpeg',
  'assets/images/9.jpeg',
  'assets/images/10.jpeg',
  'assets/images/3.jpeg',
  'assets/images/4.jpeg',
  'assets/images/11.jpeg',
  'assets/images/12.jpeg',
  'assets/images/13.jpeg',
  'assets/images/14.jpeg',
  'assets/images/15.jpeg',
  'assets/images/18.jpeg',
  'assets/images/17.jpeg',
  'assets/images/5.jpeg',
];
final User currentUser = User(name: 'Amal Anan', image: 'assets/images/7.jpeg');

final List<User> onlineUsers = [
  User(name: 'David Brooks', image: 'assets/images/17.jpeg'),
  User(name: 'Jane Doe', image: 'assets/images/9.jpeg'),
  User(name: 'Matthew Hinkle', image: 'assets/images/10.jpeg'),
  User(name: 'Amy Smith', image: 'assets/images/13.jpeg'),
  User(name: 'Ed Morris', image: 'assets/images/15.jpeg'),
  User(name: 'Carolyn Duncan', image: 'assets/images/2.jpeg'),
  User(name: 'Paul Pinnock', image: 'assets/images/11.jpeg'),
  User(name: 'Elizabeth Wong', image: 'assets/images/5.jpeg'),
  User(name: 'James Lathrop', image: 'assets/images/4.jpeg'),
  User(name: 'Jessie Samson', image: 'assets/images/3.jpeg'),
  User(name: 'David Brooks', image: 'assets/images/2.jpeg'),
  User(name: 'Jane Doe', image: 'assets/images/7.jpeg'),
  User(name: 'Matthew Hinkle', image: 'assets/images/18.jpeg'),
  User(name: 'Amy Smith', image: 'assets/images/16.jpeg'),
];

final List<Post> posts = [
  Post(
    user: currentUser,
    caption: 'Free Palestine!',
    timeAgo: '58m',
    image: 'assets/images/18.jpeg',
    likes: 1202,
    comments: 184,
    shares: 96,
  ),

  Post(
    user: onlineUsers[5],
    caption:
        'Please enjoy this placeholder text: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    timeAgo: '3hr',
    image: null,
    likes: 683,
    comments: 79,
    shares: 18,
  ),
  Post(
    user: onlineUsers[4],
    caption: 'BoyCut',
    timeAgo: '8hr',
    image: 'assets/images/5.jpeg',

    likes: 894,
    comments: 201,
    shares: 27,
  ),
  Post(
    user: onlineUsers[3],
    caption: 'Adventure 🏔',
    timeAgo: '15hr',
    image: 'assets/images/4.jpeg',

    likes: 722,
    comments: 183,
    shares: 42,
  ),
  Post(
    user: onlineUsers[0],
    caption:
        'More placeholder text for the soul: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    timeAgo: '1d',
    image: null,
    likes: 482,
    comments: 37,
    shares: 9,
  ),
  Post(
    user: onlineUsers[9],
    caption: 'A classic.',
    timeAgo: '1d',
    image: 'assets/images/7.jpeg',
    likes: 1523,
    shares: 129,
    comments: 301,
  ),
  Post(
    user: onlineUsers[2],
    caption: 'Hos Geldin',
    timeAgo: '1d',
    image: 'assets/images/11.jpeg',
    likes: 1523,
    shares: 129,
    comments: 301,
  )

];
