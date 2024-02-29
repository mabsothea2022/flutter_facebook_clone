import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/config/palette.dart';
import 'package:flutter_facebook_clone/models/models.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

final User currentUser = User(
  name: "Aijou Rentarou",
  imageURL:
      "https://static.wikia.nocookie.net/100kanojo/images/e/e2/RentarouAnimeInfobox.png/revision/latest?cb=20240118045820",
  isActive: true,
);

final List<User> onlineUsers = [
  User(
    name: "Hanazono Hakari",
    imageURL:
        "https://static.wikia.nocookie.net/100kanojo/images/0/0a/HakariAnimeInfobox.png/revision/latest?cb=20240118051455",
    isActive: true,
    addStory: true,
    viewedStory: true,
  ),
  User(
    name: "Inda Karane",
    imageURL:
        "https://static.wikia.nocookie.net/100kanojo/images/6/69/KaraneAnimeInfobox.png/revision/latest?cb=20240118051853",
    isActive: true,
    addStory: true,
    viewedStory: true,
  ),
  User(
    name: "Yoshimoto Shizuka",
    imageURL:
        "https://static.wikia.nocookie.net/100kanojo/images/1/16/ShizukaAnimeInfobox.png/revision/latest?cb=20240118071619",
    isActive: true,
    addStory: true,
    viewedStory: false,
  ),
  User(
    name: "Eiai Nano",
    imageURL:
        "https://static.wikia.nocookie.net/100kanojo/images/f/fa/NanoAnimeInfobox.png/revision/latest?cb=20240118071204",
    isActive: true,
    addStory: true,
    viewedStory: true,
  ),
  User(
    name: "Yakuzen Kusuri",
    imageURL:
        "https://static.wikia.nocookie.net/100kanojo/images/f/fb/KusuriAnimeInfobox.png/revision/latest?cb=20240118080342",
    isActive: false,
    addStory: true,
    viewedStory: true,
  ),
  User(
    name: "Hanazono Hahari",
    imageURL:
        "https://static.wikia.nocookie.net/100kanojo/images/3/30/HahariAnimeInfobox.png/revision/latest?cb=20240118082226",
    isActive: false,
    addStory: true,
    viewedStory: false,
  ),
  User(
    name: "Haraga Kurumi",
    imageURL:
        "https://static.wikia.nocookie.net/100kanojo/images/d/db/HeadshotKurumi.png/revision/latest?cb=20230917140656",
  ),
  User(
    name: "Meido Mei",
    imageURL:
        "https://static.wikia.nocookie.net/100kanojo/images/9/93/Meido_Mei.jpg/revision/latest?cb=20240115181143",
  ),
  User(
    name: "Sutou Iku",
    imageURL:
        "https://static.wikia.nocookie.net/100kanojo/images/7/78/HeadshotIku.png/revision/latest?cb=20230917140846",
  ),
  User(
    name: "Utsukushisugi Mimimi",
    imageURL:
        "https://static.wikia.nocookie.net/100kanojo/images/3/3e/HeadshotMimimi.png/revision/latest?cb=20230917140922",
  ),
  User(
    name: "Kakure Meme",
    imageURL:
        "https://static.wikia.nocookie.net/100kanojo/images/7/72/HeadshotMeme.png/revision/latest?cb=20230917143335",
  ),
  User(
    name: "Iin Chiyo",
    imageURL:
        "https://static.wikia.nocookie.net/100kanojo/images/5/54/HeadshotChiyo.png/revision/latest?cb=20230917143408",
  ),
  User(
    name: "Yamato Nadeshiko",
    imageURL:
        "https://static.wikia.nocookie.net/100kanojo/images/a/a0/HeadshotNaddy.png/revision/latest?cb=20230917143442",
  ),
  User(
    name: "Yasashiki Yamame",
    imageURL:
        "https://static.wikia.nocookie.net/100kanojo/images/b/b7/HeadshotYamame.png/revision/latest?cb=20230917143519",
  ),
  User(
    name: "Momi Momiji",
    imageURL:
        "https://static.wikia.nocookie.net/100kanojo/images/6/6b/HeadshotMomiji.png/revision/latest?cb=20230917143554",
  ),
  User(
    name: "Yakuzen Yaku",
    imageURL:
        "https://static.wikia.nocookie.net/100kanojo/images/9/96/HeadshotYaku.png/revision/latest?cb=20230917143641",
  ),
  User(
    name: "Torotoro Kishika",
    imageURL:
        "https://static.wikia.nocookie.net/100kanojo/images/9/9a/HeadshotKishika.png/revision/latest?cb=20230917143822",
  ),
  User(
    name: "Kedarui Aashii",
    imageURL:
        "https://static.wikia.nocookie.net/100kanojo/images/b/b2/HeadshotAhko.png/revision/latest?cb=20230917143901",
  ),
  User(
    name: "Nakaji Uto",
    imageURL:
        "https://static.wikia.nocookie.net/100kanojo/images/e/ef/HeadshotUto.png/revision/latest?cb=20230917143941",
  ),
  User(
    name: "Meido Mai",
    imageURL:
        "https://static.wikia.nocookie.net/100kanojo/images/4/4f/HeadshotMai.png/revision/latest?cb=20230917144016",
  ),
  User(
    name: "Bonnouji Momoha",
    imageURL:
        "https://static.wikia.nocookie.net/100kanojo/images/2/2c/HeadshotMomoha.png/revision/latest?cb=20240103155122",
  ),
];

final List<Story> stories = [
  Story(
      user: onlineUsers[2],
      imageURL:
          "https://i.pinimg.com/564x/85/23/f8/8523f8f231fef708c7b0e6119cf19cfd.jpg"),
  Story(
      user: onlineUsers[3],
      imageURL:
          "https://i.pinimg.com/564x/69/ac/a7/69aca7e604c5fd661e8c54ebfa3897d1.jpg"),
  Story(
      user: onlineUsers[0],
      imageURL:
          "https://i.pinimg.com/564x/1c/2c/83/1c2c83f8e64bc27beeb09a60a8c9d252.jpg"),
  Story(
      user: onlineUsers[5],
      imageURL:
          "https://i.pinimg.com/736x/7f/b3/59/7fb3591a80baa49a43e888a3b343c98f.jpg"),
  Story(
      user: onlineUsers[1],
      imageURL:
          "https://i.pinimg.com/564x/70/7d/54/707d544e39f8a5a9928eec1c117a29de.jpg"),
  Story(
      user: onlineUsers[4],
      imageURL:
          "https://i.pinimg.com/564x/3d/c8/15/3dc815b6db2e1aed299f655d92daad32.jpg"),
];

final List<Post> posts = [
  Post(
    user: onlineUsers[0],
    caption: "Hi, all friend!",
    timeAgo: const Duration(minutes: 58),
    imageURL:
        "https://i.pinimg.com/736x/12/fe/57/12fe571ef1505541306a61e5aac01d49.jpg",
    likes: 1284,
    comments: 24,
    shares: 98,
  ),
  Post(
    user: onlineUsers[1],
    caption: "I'm miss you",
    timeAgo: const Duration(hours: 2),
    imageURL:
        "https://i.pinimg.com/564x/4e/96/10/4e96106ab10004a236c8a01124367aef.jpg",
    likes: 1284,
    comments: 24,
    shares: 98,
  ),
  Post(
    user: onlineUsers[2],
    caption: "I'm from US",
    timeAgo: const Duration(minutes: 10),
    imageURL:
        "https://i.pinimg.com/564x/78/7d/a0/787da003a99eab5533b51059ff517aca.jpg",
    likes: 1284,
    comments: 24,
    shares: 98,
  ),
  Post(
    user: onlineUsers[3],
    caption: "Where you from?",
    timeAgo: const Duration(minutes: 20),
    imageURL:
        "https://i.pinimg.com/736x/89/0e/e8/890ee8b4dd9719e7c94ef662923bc0e3.jpg",
    likes: 1284,
    comments: 24,
    shares: 98,
  ),
  Post(
    user: onlineUsers[4],
    caption: "ផឹកកាហ្វេហេ",
    timeAgo: const Duration(hours: 5),
    imageURL:
        "https://i.pinimg.com/564x/9c/22/f8/9c22f871a6c06315a277e7225cfcf9e1.jpg",
    likes: 1284,
    comments: 24,
    shares: 98,
  ),
  Post(
    user: onlineUsers[5],
    caption: "How cute?",
    timeAgo: const Duration(hours: 3),
    imageURL:
        "https://i.pinimg.com/564x/c8/7d/2f/c87d2fc77faa27afae42196001709675.jpg",
    likes: 1284,
    comments: 24,
    shares: 98,
  ),
];

final List<FriendRequest> friendRequests = [
  FriendRequest(
      user: onlineUsers[6],
      mutualFriendsAmount: 6,
      requestDuration: const Duration(days: 7)),
  FriendRequest(
    user: onlineUsers[7],
    mutualFriendsAmount: 6,
    requestDuration: const Duration(days: 6),
  ),
  FriendRequest(
    user: onlineUsers[8],
    mutualFriendsAmount: 6,
    requestDuration: const Duration(days: 8),
  ),
  FriendRequest(
    user: onlineUsers[9],
    mutualFriendsAmount: 6,
    requestDuration: const Duration(days: 7),
  ),
  FriendRequest(
    user: onlineUsers[10],
    mutualFriendsAmount: 6,
    requestDuration: const Duration(days: 10),
  ),
  FriendRequest(
    user: onlineUsers[11],
    mutualFriendsAmount: 6,
    requestDuration: const Duration(days: 14),
  ),
  FriendRequest(
    user: onlineUsers[12],
    mutualFriendsAmount: 6,
    requestDuration: const Duration(days: 15),
  ),
  FriendRequest(
    user: onlineUsers[13],
    mutualFriendsAmount: 6,
    requestDuration: const Duration(days: 9),
  ),
  FriendRequest(
    user: onlineUsers[14],
    mutualFriendsAmount: 6,
    requestDuration: const Duration(days: 14),
  ),
  FriendRequest(
    user: onlineUsers[15],
    mutualFriendsAmount: 6,
    requestDuration: const Duration(days: 31),
  ),
];

List<FriendRequest> friendSuggestions = [
  FriendRequest(
    user: onlineUsers[16],
    mutualFriendsAmount: 6,
  ),
  FriendRequest(
    user: onlineUsers[17],
    mutualFriendsAmount: 6,
  ),
  FriendRequest(
    user: onlineUsers[18],
    mutualFriendsAmount: 6,
  ),
  FriendRequest(
    user: onlineUsers[19],
    mutualFriendsAmount: 6,
  ),
  FriendRequest(
    user: onlineUsers[20],
    mutualFriendsAmount: 6,
  ),
];

List<NotificationModel> notifications = [
  NotificationModel(
    post: posts[0],
    type: NotificationType.updatePost,
  ),
  NotificationModel(
    post: posts[1],
    type: NotificationType.updatePost,
  ),
  NotificationModel(
    post: posts[2],
    type: NotificationType.updatePost,
  ),
  NotificationModel(
    post: posts[3],
    type: NotificationType.updatePost,
  ),
  NotificationModel(
    post: posts[4],
    type: NotificationType.updatePost,
  ),
  NotificationModel(
    post: posts[5],
    type: NotificationType.updatePost,
  ),
];

var profileShortcuts = [
  {
    "imageURL":
        "https://i.pinimg.com/736x/4d/56/9f/4d569f1afffbf0593be53b2a063e5e43.jpg",
    "label": "Roem ReakSmey",
  },
  {
    "imageURL":
        "https://i.pinimg.com/564x/36/0b/b2/360bb231f5afacbc090713e9a56337c2.jpg",
    "label": "Un Vireak",
  },
  {
    "imageURL":
        "https://i.pinimg.com/564x/fb/ce/e3/fbcee3f8cf9526088423ebb28677e953.jpg",
    "label": "Penh Vong",
  },
  {
    "imageURL":
        "https://i.pinimg.com/564x/10/be/03/10be03222b85515e0dd3beac35a06eaf.jpg",
    "label": "Meng SD",
  },
  {
    "imageURL":
        "https://i.pinimg.com/564x/e3/59/d6/e359d6a3dfad166f6638d95451fc7fa7.jpg",
    "label": "Keat Kong",
  },
  {
    "imageURL":
        "https://i.pinimg.com/564x/ac/9e/3d/ac9e3d7c0f10c0689299701c709c2582.jpg",
    "label": "Hong MengChan",
  },
  {
    "imageURL":
        "https://i.pinimg.com/564x/d2/34/87/d23487c022cdb64470cb34c06befa3d0.jpg",
    "label": "Kong Sunlyheng",
  },
  {
    "imageURL":
        "https://i.pinimg.com/564x/9e/d6/52/9ed6527316f0cf4dd39983f9f7c44f8f.jpg",
    "label": "Sean Thearith",
  },
  {
    "imageURL":
        "https://i.pinimg.com/736x/49/b1/d2/49b1d2418e3984613f3195b2965dd67f.jpg",
    "label": "Mut Chruch",
  },
  {
    "imageURL":
        "https://i.pinimg.com/564x/b0/9a/97/b09a973634d50f3cc302beb743dc0576.jpg",
    "label": "Long Saroth",
  },
  {
    "imageURL":
        "https://i.pinimg.com/564x/a3/63/41/a363418fe0594ce5624fa67c15aaf6fc.jpg",
    "label": "Sos minyu",
  },
];

var shortcuts = [
  {
    "icon": const Icon(Icons.lock_clock, color: Palette.facebookBlue),
    "label": "Memories"
  },
  {"icon": const Icon(Icons.bookmark, color: Palette.facebookBlue), "label": "Saved"},
  {"icon": const Icon(Icons.group, color: Palette.facebookBlue), "label": "Groups"},
  {
    "icon": const Icon(Icons.videocam, color: Palette.facebookBlue),
    "label": "Videos"
  },
  {
    "icon": const Icon(Icons.storefront, color: Palette.facebookBlue),
    "label": "Marketplace"
  },
  {"icon": const Icon(Icons.people, color: Palette.facebookBlue), "label": "Friends"},
  {"icon": const Icon(Icons.feed, color: Palette.facebookBlue), "label": "Feeds"},
  {
    "icon": const Icon(Icons.calendar_today, color: Palette.facebookBlue),
    "label": "Events"
  },
  {"icon": const Icon(Icons.face, color: Palette.facebookBlue), "label": "Avatars"},
  {
    "icon": Icon(MdiIcons.facebookGaming, color: Palette.facebookBlue),
    "label": "Gaming"
  },
  {
    "icon": const Icon(Icons.live_tv, color: Palette.facebookBlue),
    "label": "Live videos"
  },
  {
    "icon": Icon(MdiIcons.facebookMessenger, color: Palette.facebookBlue),
    "label": "Messenger Kids"
  },
  {
    "icon": const Icon(Icons.local_offer, color: Palette.facebookBlue),
    "label": "Offers"
  },
  {"icon": const Icon(Icons.flag, color: Palette.facebookBlue), "label": "Pages"},
];
