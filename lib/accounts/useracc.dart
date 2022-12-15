class Useracc {
  final List<User> _user = [
    User(
      'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto/gigs/137409052/original/d472c30361632da1c8d8fa780f572807d78abd9f/cartoon-profile-picture-or-avatar.png',
      'Bagolbol',
      '@jk.only010',
      100,
      20,
    ),
   
  ];

  Useracc();

  List<User> get user => _user;
}

class User {
  String _userThumb, _userName, _userMName;
  int _followings, _followers;

  /*_Tweet(this._userThumb, this._userName, this._userMName, this._tweetText,
      this._tweetImage, this._retweetCount, this._commentCount,
      this._loveCount);*/

  User(
      this._userThumb,
      this._userName,
      this._userMName,
      this._followers,
      this._followings
      );

  get followings => _followings;
 
  get followers => _followers;

  get userMName => _userMName;

  get userName => _userName;

  String get userThumb => _userThumb;
}