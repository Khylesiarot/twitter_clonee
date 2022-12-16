class Tweets {
  final List<Tweet> _tweets = [
    Tweet(
      'https://i.ibb.co/svXyGnL/Mhnw-Jbxw-400x400.jpg',
      'Flutter Dev',
      '@flutter.dev',
      'Hello Flutter Developers Welcome to the awesomeness,Check This Out',
      'https://i.ibb.co/j3dYWjv/Flutter2-Lum.jpg',
      100,
      20,
      50,
      '1m',
      'Flutter Gaming'
    ),
    Tweet(
      'https://i.ibb.co/4SMHHVj/create-cartoon-profile-pictures.jpg',
      'Hanz A',
      '@itsMehanz',
      'Lezgooooooooo jaguars! Roar!',
      '',
      100,
      20,
      50,
      '10m',
      ''
    ),
    Tweet(
      'https://i.ibb.co/M1TnYnz/react-1-282599.png',
      'React Native',
      '@rn.dev',
      'Hello React-Native Developers. Check This Out',
      'https://i.ibb.co/kmvPQJq/main-qimg-f54b55df72cebb5cf9c8e97b303f7751.png',
      60,
      78,
      20,
      '5h',
      'Flutter Gaming'
    ),
    Tweet(
      'https://i.ibb.co/pLNJLMY/8fd53a6b496d9aaf0a03c8d3c1b7ea2c.jpg',
      'Weds',
      '@bossWeeds',
      'Ready for derby!',
      '',
      9,
      20,
      50,
      '21h',
      ''
    ),
    Tweet(
      'https://i.ibb.co/pRvK5Sj/OIP.jpg',
      'Andrew Tate',
      '@Top.G',
      'Lahatin',
      'https://i.ibb.co/7tTPsxc/sabong-online-betting.jpg',
      100,
      20,
      50,
      '1d',
      ''
    ),
    Tweet(
      'https://i.ibb.co/Gnrnvgs/aa.jpg',
      'Captain America',
      '@itsMeKotsTroi',
      'Fly high!',
      'https://scontent.xx.fbcdn.net/v/t1.15752-9/117793473_1655805744628130_2627384093253297662_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=aee45a&_nc_eui2=AeHYhT6bVk0LHo-wevf4vW7cIijNtOBe6agiKM204F7pqOlbUOixdN_eDJM0DzpYu6lZ6ABlMmZHcWEUxxOFYxRX&_nc_ohc=g7suAib_IoIAX9Hl9vE&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdR4iVAWoYFFRGKwplvnx6T0azLtvBLdLAMG0-WtUPwN8A&oe=63B3FBEB',
      1000,
      2000,
      5000,
      '1d',
      ''
    ),
  ];

  Tweets();

  List<Tweet> get tweets => _tweets;
}

class Tweet {
  String _userThumb, _userName, _userMName, _tweetText, _tweetImage , _timet, _topic;
  int _retweetCount, _commentCount, _loveCount;

  /*_Tweet(this._userThumb, this._userName, this._userMName, this._tweetText,
      this._tweetImage, this._retweetCount, this._commentCount,
      this._loveCount);*/

  Tweet(
      this._userThumb,
      this._userName,
      this._userMName,
      this._tweetText,
      this._tweetImage,
      this._retweetCount,
      this._commentCount,
      this._loveCount,
      this._timet,
      this._topic);

  get topic => _topic;

  get timeT => _timet;

  get loveCount => _loveCount;

  get commentCount => _commentCount;

  get retweetCount => _retweetCount;

  get tweetImage => _tweetImage;

  get tweetText => _tweetText;

  get userMName => _userMName;

  get userName => _userName;

  String get userThumb => _userThumb;
}