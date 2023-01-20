import 'package:flutter/material.dart';

class Recommendation {
  final String name, review, userPic, weburl, youtubeurl;
  final int id;
  final Color color;

  Recommendation({
    required this.name,
    required this.review,
    required this.userPic,
    required this.id,
    required this.color,
    required this.weburl,
    required this.youtubeurl,
  });
}

// List of demo Recommendations
List<Recommendation> recommendations = [
  Recommendation(
    id: 1,
    name: "Flutter大学",
    review:
        '本サイト開発者も参加している日本最大級のFlutterコミュニティー、Flutter大学の紹介です。現役エンジニアからFlutter初心者まで幅広い方が参加しており、参加プランもガッツリ学びたい方から、情報交換や共同開発がしたい方など様々な方が参加しております。自分にあったプランで参加できますのでまずはYouTube,ウェブサイトをチェックしてみてください。',
    userPic: "assets/images/FlutterUnv.png",
    weburl: 'https://flutteruniv.com',
    color: Color.fromARGB(255, 65, 94, 241),
    youtubeurl: 'https://www.youtube.com/@flutteruniv',
  ),
  Recommendation(
    id: 2,
    name: "FlutterMapp",
    review:
        'Flutterの各種Widgetを動画で詳しく解説している海外のYouTuber、FluterMappの紹介です。アプリ開発に欠かせないFlutterの数多あるWidgetを約1分の動画でコード付きで解説、全編英語ですが、シミュレーターで動かしながらなので初心者でもわかりやすく、経験者の方はWidgetの辞書代わりに最適です。ほぼ毎日更新、flutter開発者は必見です!!。',
    userPic: "assets/images/FlutterMapp.png",
    color: Color.fromARGB(255, 164, 200, 215),
    weburl: 'https://fluttermapp.com',
    youtubeurl: 'https://www.youtube.com/@FlutterMapp',
  ),
  Recommendation(
    id: 3,
    name: "The Flutter Way",
    review:
        '主にFlutterのUI部分をスピードコードで解説している海外のYouTuber、TheFlutterWayの紹介です。ベーシックなスマホUIから、FlutterWebなどのレスポンシブデザイン、複雑なアニメーションUIなど、Flutterの見た目の部分に特化したチャンネルになっております。アプリ開発者だけではなくUIデザインに興味のある方にもおすすめです!!',
    userPic: "assets/images/TheFlutterWay.png",
    color: Color.fromARGB(255, 128, 166, 199),
    weburl: 'https://theflutterway.com',
    youtubeurl: 'https://www.youtube.com/@TheFlutterWay',
  ),
  /* Recommendation(
    id: 4,
    name: "Mitch KoKo",
    review: review,
    userPic: "assets/images/MitchKoko.png",
    color: Color.fromARGB(255, 186, 84, 253),
    weburl: 'https://mobile.twitter.com/createdbykoko',
    youtubeurl: 'https://www.youtube.com/@createdbykoko',
  ),*/
];

String comment =
    '現在、アパレル勤務の個人開発者の３０代。\n本業の傍ら2022年から開発をスタート、Iosアプリの開発とwebサイトの運営を行う。\n趣味は筋トレ、競馬、ウマ娘(キングヘイロー押し)';
